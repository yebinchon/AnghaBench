
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linux_shared_page_obj ;
typedef int __elfN ;


 int LIN_SDT_PROBE0 (int ,void (*) (void const*),int ) ;
 int sysvec ;
 int todo ;

__attribute__((used)) static void
linux_vdso_deinstall(const void *param)
{

 LIN_SDT_PROBE0(sysvec, linux_vdso_deinstall, todo);
 __elfN(linux_shared_page_fini)(linux_shared_page_obj);
}
