
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int posix_spawnattr_t ;
typedef int posix_spawn_file_actions_t ;
typedef int pid_t ;


 int do_posix_spawn (int *,char const*,int const*,int const*,char* const*,char* const*,int) ;

int
posix_spawnp(pid_t *pid, const char *path,
    const posix_spawn_file_actions_t *fa,
    const posix_spawnattr_t *sa,
    char * const argv[], char * const envp[])
{
 return do_posix_spawn(pid, path, fa, sa, argv, envp, 1);
}
