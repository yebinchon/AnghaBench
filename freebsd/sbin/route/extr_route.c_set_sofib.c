
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fib ;


 int SOL_SOCKET ;
 int SO_SETFIB ;
 int s ;
 int setsockopt (int ,int ,int ,void*,int) ;

__attribute__((used)) static int
set_sofib(int fib)
{

 if (fib < 0)
  return (0);
 return (setsockopt(s, SOL_SOCKET, SO_SETFIB, (void *)&fib,
     sizeof(fib)));
}
