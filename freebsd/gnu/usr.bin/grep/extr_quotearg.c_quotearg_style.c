
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum quoting_style { ____Placeholder_quoting_style } quoting_style ;


 char* quotearg_n_style (int ,int,char const*) ;

char *
quotearg_style (enum quoting_style s, char const *arg)
{
  return quotearg_n_style (0, s, arg);
}
