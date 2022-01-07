
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int l64a_r (long,char*,int) ;

char *
l64a(long value)
{
 static char buf[7];

 (void)l64a_r(value, buf, sizeof(buf));
 return (buf);
}
