
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_SIG_SPCR ;
 scalar_t__ ARM64_BUS_ACPI ;
 scalar_t__ ARM64_BUS_FDT ;
 scalar_t__ ARM64_BUS_NONE ;
 scalar_t__ OF_peer (int ) ;
 scalar_t__ acpi_find_table (int ) ;
 scalar_t__ arm64_bus_method ;
 int freeenv (char*) ;
 char* kern_getenv (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static bool
bus_probe(void)
{
 bool has_acpi, has_fdt;
 char *order, *env;

 has_acpi = has_fdt = 0;
 env = kern_getenv("kern.cfg.order");
 if (env != ((void*)0)) {
  order = env;
  while (order != ((void*)0)) {
   if (has_acpi &&
       strncmp(order, "acpi", 4) == 0 &&
       (order[4] == ',' || order[4] == '\0')) {
    arm64_bus_method = ARM64_BUS_ACPI;
    break;
   }
   if (has_fdt &&
       strncmp(order, "fdt", 3) == 0 &&
       (order[3] == ',' || order[3] == '\0')) {
    arm64_bus_method = ARM64_BUS_FDT;
    break;
   }
   order = strchr(order, ',');
  }
  freeenv(env);


  if (arm64_bus_method != ARM64_BUS_NONE)
   return (1);
 }

 if (arm64_bus_method == ARM64_BUS_NONE) {
  if (has_fdt)
   arm64_bus_method = ARM64_BUS_FDT;
  else if (has_acpi)
   arm64_bus_method = ARM64_BUS_ACPI;
 }






 return (env == ((void*)0));
}
