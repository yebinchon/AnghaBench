
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ UINT64_MAX ;
 char* _ (char*) ;
 int printf (char*,char const*,char*,...) ;
 scalar_t__ round_up_to_mib (scalar_t__) ;
 char* uint64_to_str (scalar_t__,int) ;

__attribute__((used)) static void
memlimit_show(const char *str, uint64_t value)
{



 if (value == 0 || value == UINT64_MAX)
  printf("%s %s\n", str, _("Disabled"));
 else
  printf("%s %s MiB (%s B)\n", str,
    uint64_to_str(round_up_to_mib(value), 0),
    uint64_to_str(value, 1));

 return;
}
