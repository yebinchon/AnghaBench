
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int setupterm (char*,int ,int*) ;
 int stderr ;

__attribute__((used)) static void
term_init(char *name, char *ttype)
{
 int err;


 setupterm(ttype, STDOUT_FILENO, &err);
 switch (err) {
 case -1:
  (void)fprintf(stderr,
      "%s: No terminal database found\n", name);
  exit (1);
 case 0:
  (void)fprintf(stderr,
      "%s: %s: unknown terminal type\n", name, ttype);
  exit (1);
 }
}
