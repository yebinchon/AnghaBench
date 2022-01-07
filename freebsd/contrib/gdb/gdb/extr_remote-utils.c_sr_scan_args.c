
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECKDONE (char*,char*) ;
 int baud_rate ;
 scalar_t__ isspace (char) ;
 int savestring (char*,int) ;
 int sr_set_debug (int) ;
 int sr_set_device (int ) ;
 int strtol (char*,char**,int) ;
 int usage (char*,char*) ;

void
sr_scan_args (char *proto, char *args)
{
  int n;
  char *p, *q;


  if (args == ((void*)0) || *args == '\0')
    return;


  for (p = args; isspace (*p); ++p);;


  for (q = p; *q != '\0' && !isspace (*q); ++q);;


  CHECKDONE (p, q);
  sr_set_device (savestring (p, q - p));


  n = strtol (q, &p, 10);


  CHECKDONE (p, q);
  baud_rate = n;


  n = strtol (p, &q, 10);


  CHECKDONE (p, q);
  sr_set_debug (n);


  for (p = q; isspace (*p); ++p);;


  if (*p != '\0')
    usage (proto, p);

  return;
}
