
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quoting_options {int style; } ;
typedef enum quoting_style { ____Placeholder_quoting_style } quoting_style ;


 struct quoting_options default_quoting_options ;

enum quoting_style
get_quoting_style (struct quoting_options *o)
{
  return (o ? o : &default_quoting_options)->style;
}
