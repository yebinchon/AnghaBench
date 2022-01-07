
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int perror (char*) ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;

char *ssh_get_progname(char *argv0)
{
 char *p, *q;





 if (argv0 == ((void*)0))
  return ("unknown");
 p = strrchr(argv0, '/');
 if (p == ((void*)0))
  p = argv0;
 else
  p++;

 if ((q = strdup(p)) == ((void*)0)) {
  perror("strdup");
  exit(1);
 }
 return q;
}
