
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int dummy; } ;


 scalar_t__ handle_case_0x757 (struct torus*,int,int,int) ;
 scalar_t__ handle_case_0x75d (struct torus*,int,int,int) ;
 scalar_t__ handle_case_0x775 (struct torus*,int,int,int) ;
 int handle_case_0x7d5 (struct torus*,int,int,int) ;

__attribute__((used)) static
bool handle_case_0x755(struct torus *t, int i, int j, int k)
{
 if (handle_case_0x757(t, i, j, k))
  return 1;

 if (handle_case_0x75d(t, i, j, k))
  return 1;

 if (handle_case_0x775(t, i, j, k))
  return 1;

 return handle_case_0x7d5(t, i, j, k);
}
