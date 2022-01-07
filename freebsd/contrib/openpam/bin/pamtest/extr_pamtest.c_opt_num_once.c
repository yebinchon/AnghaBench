
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int) ;
 char* optarg ;
 int stderr ;
 long strtol (char const*,char**,int ) ;
 int usage () ;

__attribute__((used)) static void
opt_num_once(int opt, long *num, const char *arg)
{
 char *end;
 long l;

 l = strtol(arg, &end, 0);
 if (end == optarg || *end != '\0') {
  fprintf(stderr,
      "The -%c option expects a numeric argument\n", opt);
  usage();
 }
 *num = l;
}
