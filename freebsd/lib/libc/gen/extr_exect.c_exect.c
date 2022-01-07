
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBUSY ;
 int PT_TRACE_ME ;
 scalar_t__ errno ;
 int execve (char const*,char* const*,char* const*) ;
 scalar_t__ ptrace (int ,int ,int ,int ) ;

int
exect(const char *path, char *const argv[], char *const envp[])
{

 if (ptrace(PT_TRACE_ME, 0, 0, 0) != 0) {
  if (errno != EBUSY)
   return (-1);
 }

 return (execve(path, argv, envp));
}
