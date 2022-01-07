
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* quotearg_n (int ,char const*) ;

char *
quotearg (char const *arg)
{
  return quotearg_n (0, arg);
}
