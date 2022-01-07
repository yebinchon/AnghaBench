
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * e ;
 int el_push (int *,char*) ;
 int * h ;
 int rl_initialize () ;

int
rl_insert(int count, int c)
{
 char arr[2];

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();


 arr[0] = (char)c;
 arr[1] = '\0';

 for (; count > 0; count--)
  el_push(e, arr);

 return 0;
}
