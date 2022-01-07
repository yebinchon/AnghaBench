
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_mux {int * functions; } ;


 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
pinmux_mux_function(const struct tegra_mux *mux, char *fnc_name)
{
 int i;

 for (i = 0; i < 4; i++) {
  if (strcmp(fnc_name, mux->functions[i]) == 0)
   return (i);
 }
 return (-1);
}
