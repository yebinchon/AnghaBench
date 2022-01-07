
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linux_shared_page_obj ;
typedef int __elfN ;



__attribute__((used)) static void
linux_vdso_deinstall(void *param)
{

 __elfN(linux_shared_page_fini)(linux_shared_page_obj);
}
