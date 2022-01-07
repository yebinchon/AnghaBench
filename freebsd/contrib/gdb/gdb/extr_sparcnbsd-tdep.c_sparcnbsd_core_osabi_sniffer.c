
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gdb_osabi { ____Placeholder_gdb_osabi } gdb_osabi ;
typedef int bfd ;


 int GDB_OSABI_NETBSD_CORE ;
 int GDB_OSABI_UNKNOWN ;
 int bfd_get_target (int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static enum gdb_osabi
sparcnbsd_core_osabi_sniffer (bfd *abfd)
{
  if (strcmp (bfd_get_target (abfd), "netbsd-core") == 0)
    return GDB_OSABI_NETBSD_CORE;

  return GDB_OSABI_UNKNOWN;
}
