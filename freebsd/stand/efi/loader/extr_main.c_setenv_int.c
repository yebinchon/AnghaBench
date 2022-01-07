
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int setenv (char const*,char*,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
setenv_int(const char *key, int val)
{
 char buf[20];

 snprintf(buf, sizeof(buf), "%d", val);
 setenv(key, buf, 1);
}
