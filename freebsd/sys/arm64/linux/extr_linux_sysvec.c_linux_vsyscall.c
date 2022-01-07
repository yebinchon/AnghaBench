
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int EDOOFUS ;
 int LIN_SDT_PROBE0 (int ,int (*) (struct thread*),int ) ;
 int sysvec ;
 int todo ;

__attribute__((used)) static int
linux_vsyscall(struct thread *td)
{


 LIN_SDT_PROBE0(sysvec, linux_vsyscall, todo);
 return (EDOOFUS);
}
