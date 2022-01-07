
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIRNAME_SEPARATOR ;
 int forget_cached_source_info () ;
 int source_path ;
 int sprintf (char*,char*,int) ;
 int xstrdup (char*) ;

void
init_source_path (void)
{
  char buf[20];

  sprintf (buf, "$cdir%c$cwd", DIRNAME_SEPARATOR);
  source_path = xstrdup (buf);
  forget_cached_source_info ();
}
