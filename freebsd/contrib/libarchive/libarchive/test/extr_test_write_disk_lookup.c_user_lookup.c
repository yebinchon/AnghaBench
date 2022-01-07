
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int assertEqualInt (int,int) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int64_t
user_lookup(void *d, const char *name, int64_t u)
{
 int *mp = d;

 (void)u;

 assertEqualInt(*mp, 0x1234);
 if (strcmp("FOO", name) == 0)
  return (2);
 return (74);
}
