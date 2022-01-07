
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_2__ {void* addr; char* symbol; } ;


 int ISC_R_RANGE ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int isc__backtrace_nsymbols ;
 TYPE_1__* isc__backtrace_symtable ;

isc_result_t
isc_backtrace_getsymbolfromindex(int idx, const void **addrp,
     const char **symbolp)
{
 REQUIRE(addrp != ((void*)0) && *addrp == ((void*)0));
 REQUIRE(symbolp != ((void*)0) && *symbolp == ((void*)0));

 if (idx < 0 || idx >= isc__backtrace_nsymbols)
  return (ISC_R_RANGE);

 *addrp = isc__backtrace_symtable[idx].addr;
 *symbolp = isc__backtrace_symtable[idx].symbol;
 return (ISC_R_SUCCESS);
}
