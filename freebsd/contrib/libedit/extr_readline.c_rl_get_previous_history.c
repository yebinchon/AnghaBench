
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int e ;
 int el_push (int ,char*) ;

int
rl_get_previous_history(int count, int key)
{
 char a[2];
 a[0] = (char)key;
 a[1] = '\0';
 while (count--)
  el_push(e, a);
 return 0;
}
