
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quoting_options {int dummy; } ;


 struct quoting_options default_quoting_options ;
 char* quotearg_n_options (int ,char const*,struct quoting_options*) ;
 int set_char_quoting (struct quoting_options*,char,int) ;

char *
quotearg_char (char const *arg, char ch)
{
  struct quoting_options options;
  options = default_quoting_options;
  set_char_quoting (&options, ch, 1);
  return quotearg_n_options (0, arg, &options);
}
