
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_mux {int name; } ;


 int nitems (struct tegra_mux const*) ;
 struct tegra_mux const* pin_mux_tbl ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static const struct tegra_mux *
pinmux_search_mux(char *pin_name)
{
 int i;

 for (i = 0; i < nitems(pin_mux_tbl); i++) {
  if (strcmp(pin_name, pin_mux_tbl[i].name) == 0)
   return (&pin_mux_tbl[i]);
 }
 return (((void*)0));
}
