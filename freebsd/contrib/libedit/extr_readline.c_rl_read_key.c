
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * e ;
 int el_getc (int *,char*) ;
 int * h ;
 int rl_initialize () ;

int
rl_read_key(void)
{
 char fooarr[2 * sizeof(int)];

 if (e == ((void*)0) || h == ((void*)0))
  rl_initialize();

 return el_getc(e, fooarr);
}
