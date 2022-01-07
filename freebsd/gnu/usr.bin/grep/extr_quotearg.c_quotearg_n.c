
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_quoting_options ;
 char* quotearg_n_options (unsigned int,char const*,int *) ;

char *
quotearg_n (unsigned int n, char const *arg)
{
  return quotearg_n_options (n, arg, &default_quoting_options);
}
