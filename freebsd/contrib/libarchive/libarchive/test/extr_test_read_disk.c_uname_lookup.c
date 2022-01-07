
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int assertEqualInt (int,int) ;

__attribute__((used)) static const char *
uname_lookup(void *d, int64_t u)
{
 int *mp = d;
 assertEqualInt(*mp, 0x1234);
 if (u == 1)
  return ("FOO");
 return ("NOTFOO");
}
