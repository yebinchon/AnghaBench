
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_hook {size_t got; size_t argc; int * argv; } ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 int printf (char*,char*,int) ;
 int stderr ;
 int strtol (int ,int ,int ) ;
 int usage (int ) ;
 scalar_t__ verbose ;

int
iget(void *hook, char *name)
{
 struct get_hook *h = (struct get_hook *)hook;
 int arg;

 if (h->got >= h->argc)
 {
  fprintf(stderr, "Expecting an integer argument.\n");
  usage(0);
  exit(1);
 }
 arg = strtol(h->argv[h->got], 0, 0);
 h->got++;

 if (verbose && name && *name)
  printf("%s: %d\n", name, arg);

 return arg;
}
