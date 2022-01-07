
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int e ;
 int el_insertstr (int ,char*) ;

int
rl_stuff_char(int c)
{
 char buf[2];

 buf[0] = (char)c;
 buf[1] = '\0';
 el_insertstr(e, buf);
 return 1;
}
