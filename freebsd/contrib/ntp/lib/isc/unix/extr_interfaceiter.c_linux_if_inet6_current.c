
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct in6_addr {unsigned char* s6_addr; } ;
typedef int isc_uint32_t ;
typedef scalar_t__ isc_result_t ;
struct TYPE_4__ {unsigned int ifindex; int name; int netmask; int address; int flags; int af; } ;
struct TYPE_5__ {scalar_t__ valid; TYPE_1__ current; int entry; int * proc; } ;
typedef TYPE_2__ isc_interfaceiter_t ;


 int AF_INET6 ;
 int IFA_F_TENTATIVE ;
 int IF_NAMESIZE ;
 int INTERFACE_F_UP ;
 int ISC_LOGCATEGORY_GENERAL ;
 int ISC_LOGMODULE_INTERFACE ;
 int ISC_LOG_ERROR ;
 scalar_t__ ISC_R_FAILURE ;
 scalar_t__ ISC_R_IGNORE ;
 scalar_t__ ISC_R_SUCCESS ;
 int isc_lctx ;
 int isc_log_write (int ,int ,int ,int ,char*,...) ;
 int isc_netaddr_fromin6 (int *,struct in6_addr*) ;
 scalar_t__ isc_netaddr_islinklocal (int *) ;
 int isc_netaddr_setzone (int *,int ) ;
 int sscanf (int ,char*,char*,unsigned int*,int*,int*,int*,char*) ;
 char const* strchr (char const*,char) ;
 int strlen (char*) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static isc_result_t
linux_if_inet6_current(isc_interfaceiter_t *iter) {
 char address[33];
 char name[IF_NAMESIZE+1];
 struct in6_addr addr6;
 unsigned int ifindex;
 int prefix, scope, flags;
 int res;
 unsigned int i;

 if (iter->valid != ISC_R_SUCCESS)
  return (iter->valid);
 if (iter->proc == ((void*)0)) {
  isc_log_write(isc_lctx, ISC_LOGCATEGORY_GENERAL,
         ISC_LOGMODULE_INTERFACE, ISC_LOG_ERROR,
         "/proc/net/if_inet6:iter->proc == NULL");
  return (ISC_R_FAILURE);
 }

 res = sscanf(iter->entry, "%32[a-f0-9] %x %x %x %x %16s\n",
       address, &ifindex, &prefix, &scope, &flags, name);
 if (res != 6) {
  isc_log_write(isc_lctx, ISC_LOGCATEGORY_GENERAL,
         ISC_LOGMODULE_INTERFACE, ISC_LOG_ERROR,
         "/proc/net/if_inet6:sscanf() -> %d (expected 6)",
         res);
  return (ISC_R_FAILURE);
 }
 if (strlen(address) != 32) {
  isc_log_write(isc_lctx, ISC_LOGCATEGORY_GENERAL,
         ISC_LOGMODULE_INTERFACE, ISC_LOG_ERROR,
         "/proc/net/if_inet6:strlen(%s) != 32", address);
  return (ISC_R_FAILURE);
 }
 for (i = 0; i < 16; i++) {
  unsigned char byte;
  static const char hex[] = "0123456789abcdef";
  byte = ((strchr(hex, address[i * 2]) - hex) << 4) |
         (strchr(hex, address[i * 2 + 1]) - hex);
  addr6.s6_addr[i] = byte;
 }
 iter->current.af = AF_INET6;
 iter->current.flags = INTERFACE_F_UP;
 isc_netaddr_fromin6(&iter->current.address, &addr6);
 iter->current.ifindex = ifindex;
 if (isc_netaddr_islinklocal(&iter->current.address)) {
  isc_netaddr_setzone(&iter->current.address,
        (isc_uint32_t)ifindex);
 }
 for (i = 0; i < 16; i++) {
  if (prefix > 8) {
   addr6.s6_addr[i] = 0xff;
   prefix -= 8;
  } else {
   addr6.s6_addr[i] = (0xff << (8 - prefix)) & 0xff;
   prefix = 0;
  }
 }
 isc_netaddr_fromin6(&iter->current.netmask, &addr6);
 strncpy(iter->current.name, name, sizeof(iter->current.name));
 return (ISC_R_SUCCESS);
}
