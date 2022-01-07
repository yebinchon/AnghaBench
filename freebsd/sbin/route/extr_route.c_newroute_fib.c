
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rtmsg (char,int,int) ;
 int set_sofib (int) ;
 int warn (char*,int) ;

__attribute__((used)) static int
newroute_fib(int fib, char *cmd, int flags)
{
 int error;

 error = set_sofib(fib);
 if (error) {
  warn("fib number %d is ignored", fib);
  return (error);
 }

 error = rtmsg(*cmd, flags, fib);
 return (error);
}
