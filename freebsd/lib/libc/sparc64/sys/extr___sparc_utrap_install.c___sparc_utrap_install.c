
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* utrap_handler_t ;
typedef int utrap_entry_t ;
struct sparc_utrap_install_args {int num; struct sparc_utrap_args* handlers; } ;
struct sparc_utrap_args {void** old_precise; void** old_deferred; void* new_deferred; void* new_precise; int type; } ;


 int SPARC_UTRAP_INSTALL ;
 int sysarch (int ,struct sparc_utrap_install_args*) ;

int
__sparc_utrap_install(utrap_entry_t type, utrap_handler_t new_precise,
    utrap_handler_t new_deferred, utrap_handler_t *old_precise,
    utrap_handler_t *old_deferred)
{
 struct sparc_utrap_install_args uia;
 struct sparc_utrap_args ua[1];

 ua[0].type = type;
 ua[0].new_precise = new_precise;
 ua[0].new_deferred = new_deferred;
 ua[0].old_precise = old_precise;
 ua[0].old_deferred = old_deferred;
 uia.num = 1;
 uia.handlers = ua;
 return (sysarch(SPARC_UTRAP_INSTALL, &uia));
}
