
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int buf ;


 int setenv (char*,char*,int) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static int
cl_putenv(char *name, char *str, u_long value)
{
 char buf[40];

 if (str == ((void*)0)) {
  (void)snprintf(buf, sizeof(buf), "%lu", value);
  return (setenv(name, buf, 1));
 } else
  return (setenv(name, str, 1));
}
