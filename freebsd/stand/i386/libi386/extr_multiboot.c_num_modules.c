
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {struct kernel_module* f_modules; } ;
struct kernel_module {struct kernel_module* m_next; } ;



__attribute__((used)) static int
num_modules(struct preloaded_file *kfp)
{
 struct kernel_module *kmp;
 int mod_num = 0;

 for (kmp = kfp->f_modules; kmp != ((void*)0); kmp = kmp->m_next)
  mod_num++;

 return (mod_num);
}
