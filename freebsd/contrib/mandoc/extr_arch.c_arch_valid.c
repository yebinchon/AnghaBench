
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mandoc_os { ____Placeholder_mandoc_os } mandoc_os ;


 scalar_t__ strcmp (char const*,char const*) ;

int
arch_valid(const char *arch, enum mandoc_os os)
{
 const char *openbsd_arch[] = {
  "alpha", "amd64", "arm64", "armv7", "hppa", "i386",
  "landisk", "loongson", "luna88k", "macppc", "mips64",
  "octeon", "sgi", "sparc64", ((void*)0)
 };
 const char *netbsd_arch[] = {
  "acorn26", "acorn32", "algor", "alpha", "amiga",
  "arc", "atari",
  "bebox", "cats", "cesfic", "cobalt", "dreamcast",
  "emips", "evbarm", "evbmips", "evbppc", "evbsh3", "evbsh5",
  "hp300", "hpcarm", "hpcmips", "hpcsh", "hppa",
  "i386", "ibmnws", "luna68k",
  "mac68k", "macppc", "mipsco", "mmeye", "mvme68k", "mvmeppc",
  "netwinder", "news68k", "newsmips", "next68k",
  "pc532", "playstation2", "pmax", "pmppc", "prep",
  "sandpoint", "sbmips", "sgimips", "shark",
  "sparc", "sparc64", "sun2", "sun3",
  "vax", "walnut", "x68k", "x86", "x86_64", "xen", ((void*)0)
 };
 const char **arches[] = { ((void*)0), netbsd_arch, openbsd_arch };
 const char **arch_p;

 if ((arch_p = arches[os]) == ((void*)0))
  return 1;
 for (; *arch_p != ((void*)0); arch_p++)
  if (strcmp(*arch_p, arch) == 0)
   return 1;
 return 0;
}
