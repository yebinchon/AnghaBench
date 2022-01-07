
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *
numstr(int x)
{
 static char buf[20];

 snprintf(buf, sizeof(buf), "%#x", x);
 return buf;
}
