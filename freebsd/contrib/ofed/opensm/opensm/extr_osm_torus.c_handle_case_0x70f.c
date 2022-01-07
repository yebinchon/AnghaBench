
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int dummy; } ;


 scalar_t__ handle_case_0x71f (struct torus*,int,int,int) ;
 scalar_t__ handle_case_0x72f (struct torus*,int,int,int) ;
 scalar_t__ handle_case_0x74f (struct torus*,int,int,int) ;
 int handle_case_0x78f (struct torus*,int,int,int) ;

__attribute__((used)) static
bool handle_case_0x70f(struct torus *t, int i, int j, int k)
{
 if (handle_case_0x71f(t, i, j, k))
  return 1;

 if (handle_case_0x72f(t, i, j, k))
  return 1;

 if (handle_case_0x74f(t, i, j, k))
  return 1;

 return handle_case_0x78f(t, i, j, k);
}
