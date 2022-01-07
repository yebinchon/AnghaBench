
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ LPCONTEXT ;


 scalar_t__* mappings ;

__attribute__((used)) static ULONG *
regptr (LPCONTEXT c, int r)
{
  static ULONG zero = 0;
  ULONG *p;
  if (mappings[r] < 0)
    p = &zero;
  else
    p = (ULONG *) (((char *) c) + mappings[r]);
  return p;
}
