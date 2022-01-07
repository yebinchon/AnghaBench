
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_desc {int * sd_name; } ;


 scalar_t__ strcmp (int *,char const*) ;
 struct syscall_desc* syscalls ;

__attribute__((used)) static struct syscall_desc *
find_syscall(const char *name)
{
 int i;

 for (i = 0; syscalls[i].sd_name != ((void*)0); i++) {
  if (strcmp(syscalls[i].sd_name, name) == 0)
   return (&syscalls[i]);
 }
 return (((void*)0));
}
