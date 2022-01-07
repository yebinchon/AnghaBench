
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_grp {int name; } ;


 int nitems (struct tegra_grp const*) ;
 struct tegra_grp const* pin_grp_tbl ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static const struct tegra_grp *
pinmux_search_grp(char *grp_name)
{
 int i;

 for (i = 0; i < nitems(pin_grp_tbl); i++) {
  if (strcmp(grp_name, pin_grp_tbl[i].name) == 0)
   return (&pin_grp_tbl[i]);
 }
 return (((void*)0));
}
