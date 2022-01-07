
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int dummy; } ;


 scalar_t__ handle_case_0x7f1 (struct torus*,int,int,int) ;
 scalar_t__ handle_case_0x7f2 (struct torus*,int,int,int) ;
 scalar_t__ handle_case_0x7f4 (struct torus*,int,int,int) ;
 int handle_case_0x7f8 (struct torus*,int,int,int) ;

__attribute__((used)) static
bool handle_case_0x7f0(struct torus *t, int i, int j, int k)
{
 if (handle_case_0x7f1(t, i, j, k))
  return 1;

 if (handle_case_0x7f2(t, i, j, k))
  return 1;

 if (handle_case_0x7f4(t, i, j, k))
  return 1;

 return handle_case_0x7f8(t, i, j, k);
}
