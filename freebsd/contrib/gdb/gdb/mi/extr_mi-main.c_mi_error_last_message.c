
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* error_last_message () ;
 int mi_error_message ;
 int xasprintf (int *,char*,char*) ;
 int xfree (char*) ;

void
mi_error_last_message (void)
{
  char *s = error_last_message ();
  xasprintf (&mi_error_message, "%s", s);
  xfree (s);
}
