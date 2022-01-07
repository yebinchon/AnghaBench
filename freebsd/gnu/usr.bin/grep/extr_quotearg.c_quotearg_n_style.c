
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quoting_options {int style; int quote_these_too; } ;
typedef enum quoting_style { ____Placeholder_quoting_style } quoting_style ;


 int memset (int ,int ,int) ;
 char* quotearg_n_options (unsigned int,char const*,struct quoting_options*) ;

char *
quotearg_n_style (unsigned int n, enum quoting_style s, char const *arg)
{
  struct quoting_options o;
  o.style = s;
  memset (o.quote_these_too, 0, sizeof o.quote_these_too);
  return quotearg_n_options (n, arg, &o);
}
