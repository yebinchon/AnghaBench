
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int dummy; } ;


 scalar_t__ handle_case_0x7ab (struct torus*,int,int,int) ;
 scalar_t__ handle_case_0x7ae (struct torus*,int,int,int) ;
 scalar_t__ handle_case_0x7ba (struct torus*,int,int,int) ;
 int handle_case_0x7ea (struct torus*,int,int,int) ;

__attribute__((used)) static
bool handle_case_0x7aa(struct torus *t, int i, int j, int k)
{
 if (handle_case_0x7ab(t, i, j, k))
  return 1;

 if (handle_case_0x7ae(t, i, j, k))
  return 1;

 if (handle_case_0x7ba(t, i, j, k))
  return 1;

 return handle_case_0x7ea(t, i, j, k);
}
