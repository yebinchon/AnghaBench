
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threadinfo {int gotsignal; } ;



__attribute__((used)) static void *
f(void *arg)
{
 struct threadinfo volatile *t = arg;

 while (t->gotsignal < 1) {

 }

 return ((void*)0);
}
