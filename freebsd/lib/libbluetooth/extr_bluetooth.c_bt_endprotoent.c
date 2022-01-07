
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int * protof ;

void
bt_endprotoent(void)
{
 if (protof != ((void*)0)) {
  (void) fclose(protof);
  protof = ((void*)0);
 }
}
