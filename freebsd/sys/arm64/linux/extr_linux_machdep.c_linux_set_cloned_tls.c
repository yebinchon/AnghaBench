
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int EDOOFUS ;
 int LIN_SDT_PROBE0 (int ,int (*) (struct thread*,void*),int ) ;
 int machdep ;
 int todo ;

int
linux_set_cloned_tls(struct thread *td, void *desc)
{

 LIN_SDT_PROBE0(machdep, linux_set_cloned_tls, todo);
 return (EDOOFUS);
}
