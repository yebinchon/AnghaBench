
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_pinmux_padconf {int dummy; } ;


 int EINVAL ;
 int ENXIO ;
 struct ti_pinmux_padconf* ti_pinmux_padconf_from_name (char const*) ;
 int ti_pinmux_padconf_set_internal (int ,struct ti_pinmux_padconf const*,char const*,unsigned int) ;
 int ti_pinmux_sc ;

int
ti_pinmux_padconf_set(const char *padname, const char *muxmode, unsigned int state)
{
 const struct ti_pinmux_padconf *padconf;

 if (!ti_pinmux_sc)
  return (ENXIO);


 padconf = ti_pinmux_padconf_from_name(padname);
 if (padconf == ((void*)0))
  return (EINVAL);

 return (ti_pinmux_padconf_set_internal(ti_pinmux_sc, padconf, muxmode, state));
}
