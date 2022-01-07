
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int assertEqualInt (int,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int64_t
group_lookup(void *d, const char *name, int64_t g)
{
 int *mp = d;

 (void)g;

 assertEqualInt(*mp, 0x13579);
 if (strcmp(name, "FOOGROUP"))
  return (1);
 return (73);
}
