
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_spawn_args {char const* path; char* const* argv; char* const* envp; int use_env_path; scalar_t__ error; int const* sa; int const* fa; } ;
typedef int posix_spawnattr_t ;
typedef int posix_spawn_file_actions_t ;
typedef int pid_t ;


 scalar_t__ EINVAL ;
 int ENOMEM ;
 int RFSPAWN ;
 int WNOHANG ;
 int _RFORK_THREAD_STACK_SIZE ;
 int _posix_spawn_thr (struct posix_spawn_args*) ;
 int _waitpid (int,int *,int ) ;
 scalar_t__ errno ;
 int free (char*) ;
 char* malloc (int) ;
 int rfork (int ) ;
 int rfork_thread (int ,char*,int (*) (struct posix_spawn_args*),struct posix_spawn_args*) ;
 int vfork () ;

__attribute__((used)) static int
do_posix_spawn(pid_t *pid, const char *path,
    const posix_spawn_file_actions_t *fa,
    const posix_spawnattr_t *sa,
    char * const argv[], char * const envp[], int use_env_path)
{
 struct posix_spawn_args psa;
 pid_t p;







 psa.path = path;
 psa.fa = fa;
 psa.sa = sa;
 psa.argv = argv;
 psa.envp = envp;
 psa.use_env_path = use_env_path;
 psa.error = 0;
 p = rfork(RFSPAWN);
 if (p == 0)

  _posix_spawn_thr(&psa);







 if (p == -1 && errno == EINVAL) {
  p = vfork();
  if (p == 0)

   _posix_spawn_thr(&psa);
 }
 if (p == -1)
  return (errno);
 if (psa.error != 0)

  _waitpid(p, ((void*)0), WNOHANG);
 else if (pid != ((void*)0))

  *pid = p;
 return (psa.error);
}
