
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mi_opt {int dummy; } ;


 int mi_getopt (char const*,int,char**,struct mi_opt*,int*,char**) ;

int
mi_valid_noargs (const char *prefix, int argc, char **argv)
{
  int optind = 0;
  char *optarg;
  static struct mi_opt opts[] =
  {
    0
  };

  if (mi_getopt (prefix, argc, argv, opts, &optind, &optarg) == -1)
    return 1;
  else
    return 0;
}
