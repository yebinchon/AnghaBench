
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_pinmux_padconf {int * ballname; } ;
struct TYPE_2__ {struct ti_pinmux_padconf* padconf; } ;


 scalar_t__ strcmp (char const*,int *) ;
 TYPE_1__* ti_pinmux_dev ;

__attribute__((used)) static const struct ti_pinmux_padconf*
ti_pinmux_padconf_from_name(const char *ballname)
{
 const struct ti_pinmux_padconf *padconf;

 padconf = ti_pinmux_dev->padconf;
 while (padconf->ballname != ((void*)0)) {
  if (strcmp(ballname, padconf->ballname) == 0)
   return(padconf);
  padconf++;
 }

 return (((void*)0));
}
