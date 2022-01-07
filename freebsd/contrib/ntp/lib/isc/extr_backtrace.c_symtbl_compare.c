
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void const* addr; } ;
typedef TYPE_1__ isc_backtrace_symmap_t ;


 int isc__backtrace_nsymbols ;
 TYPE_1__* isc__backtrace_symtable ;

__attribute__((used)) static int
symtbl_compare(const void *addr, const void *entryarg) {
 const isc_backtrace_symmap_t *entry = entryarg;
 const isc_backtrace_symmap_t *end =
  &isc__backtrace_symtable[isc__backtrace_nsymbols - 1];

 if (isc__backtrace_nsymbols == 1 || entry == end) {
  if (addr >= entry->addr) {





   return (0);
  }
  return (-1);
 }


 if (addr < entry->addr)
  return (-1);
 else if (addr >= (entry + 1)->addr)
  return (1);
 return (0);
}
