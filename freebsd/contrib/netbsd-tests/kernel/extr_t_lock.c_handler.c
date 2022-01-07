
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cpu_simple_unlock (int *) ;
 int handled ;
 int lk ;

__attribute__((used)) static void
handler(int sig)
{
 handled = 1;
 __cpu_simple_unlock(&lk);
}
