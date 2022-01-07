
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hookproc {int hp_comm; } ;
typedef int pid_t ;


 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 struct hookproc* hook_find (int ) ;
 int hook_free (struct hookproc*) ;
 int hook_remove (struct hookproc*) ;
 int hookprocs_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pjdlog_debug (int,char*,int ,...) ;
 int pjdlog_error (char*,int ,int,int ) ;

void
hook_check_one(pid_t pid, int status)
{
 struct hookproc *hp;

 mtx_lock(&hookprocs_lock);
 hp = hook_find(pid);
 if (hp == ((void*)0)) {
  mtx_unlock(&hookprocs_lock);
  pjdlog_debug(1, "Unknown process pid=%u", pid);
  return;
 }
 hook_remove(hp);
 mtx_unlock(&hookprocs_lock);
 if (WIFEXITED(status) && WEXITSTATUS(status) == 0) {
  pjdlog_debug(1, "Hook exited gracefully (pid=%u, cmd=[%s]).",
      pid, hp->hp_comm);
 } else if (WIFSIGNALED(status)) {
  pjdlog_error("Hook was killed (pid=%u, signal=%d, cmd=[%s]).",
      pid, WTERMSIG(status), hp->hp_comm);
 } else {
  pjdlog_error("Hook exited ungracefully (pid=%u, exitcode=%d, cmd=[%s]).",
      pid, WIFEXITED(status) ? WEXITSTATUS(status) : -1,
      hp->hp_comm);
 }
 hook_free(hp);
}
