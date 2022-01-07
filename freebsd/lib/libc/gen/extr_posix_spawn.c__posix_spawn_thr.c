
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_spawn_args {char** envp; scalar_t__ error; int argv; int path; scalar_t__ use_env_path; int * fa; int * sa; } ;


 int _execve (int ,int ,char* const*) ;
 int _execvpe (int ,int ,char* const*) ;
 int _exit (int) ;
 char** environ ;
 scalar_t__ errno ;
 scalar_t__ process_file_actions (int ) ;
 scalar_t__ process_spawnattr (int ) ;

__attribute__((used)) static int
_posix_spawn_thr(void *data)
{
 struct posix_spawn_args *psa;
 char * const *envp;

 psa = data;
 if (psa->sa != ((void*)0)) {
  psa->error = process_spawnattr(*psa->sa);
  if (psa->error)
   _exit(127);
 }
 if (psa->fa != ((void*)0)) {
  psa->error = process_file_actions(*psa->fa);
  if (psa->error)
   _exit(127);
 }
 envp = psa->envp != ((void*)0) ? psa->envp : environ;
 if (psa->use_env_path)
  _execvpe(psa->path, psa->argv, envp);
 else
  _execve(psa->path, psa->argv, envp);
 psa->error = errno;


 _exit(127);
}
