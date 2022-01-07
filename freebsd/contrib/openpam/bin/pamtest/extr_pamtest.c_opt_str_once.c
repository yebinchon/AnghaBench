
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int usage () ;

__attribute__((used)) static void
opt_str_once(int opt, const char **p, const char *arg)
{

 if (*p != ((void*)0)) {
  fprintf(stderr, "The -%c option can only be used once\n", opt);
  usage();
 }
 *p = arg;
}
