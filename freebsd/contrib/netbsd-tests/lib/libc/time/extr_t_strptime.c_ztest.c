
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int offs; } ;


 size_t __arraycount (TYPE_1__*) ;
 int setenv (char*,char*,int) ;
 TYPE_1__* zt ;
 int ztest1 (char*,char const*,int) ;

__attribute__((used)) static void
ztest(const char *fmt)
{
 setenv("TZ", "US/Eastern", 1);

 ztest1("GMT", fmt, 0);
 ztest1("UTC", fmt, 0);
 ztest1("US/Eastern", fmt, -18000);

 for (size_t i = 0; i < __arraycount(zt); i++)
  ztest1(zt[i].name, fmt, zt[i].offs);
}
