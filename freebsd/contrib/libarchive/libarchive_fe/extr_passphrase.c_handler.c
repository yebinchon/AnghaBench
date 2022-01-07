
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_SIGNO ;
 int assert (int) ;
 int* signo ;

__attribute__((used)) static void
handler(int s)
{
 assert(s <= MAX_SIGNO);
 signo[s] = 1;
}
