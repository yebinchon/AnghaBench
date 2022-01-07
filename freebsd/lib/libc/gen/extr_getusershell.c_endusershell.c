
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * curshell ;
 int * sl ;
 int sl_free (int *,int) ;

void
endusershell(void)
{
 if (sl) {
  sl_free(sl, 1);
  sl = ((void*)0);
 }
 curshell = ((void*)0);
}
