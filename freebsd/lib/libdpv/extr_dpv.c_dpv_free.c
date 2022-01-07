
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * aprompt ;
 int dialog_maxsize_free () ;
 int dialogrc_free () ;
 int dprompt_free () ;
 int free (int *) ;
 int * pprompt ;
 int status_free () ;

void
dpv_free(void)
{
 dialogrc_free();
 dprompt_free();
 dialog_maxsize_free();
 if (aprompt != ((void*)0)) {
  free(aprompt);
  aprompt = ((void*)0);
 }
 if (pprompt != ((void*)0)) {
  free(pprompt);
  pprompt = ((void*)0);
 }
 status_free();
}
