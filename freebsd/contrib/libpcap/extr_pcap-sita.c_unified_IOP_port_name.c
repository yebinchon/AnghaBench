
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chassis; int geoslot; } ;
typedef TYPE_1__ unit_t ;


 int pcap_snprintf (char*,size_t,char*,char const*,int) ;

__attribute__((used)) static void unified_IOP_port_name(char *buf, size_t bufsize, const char *proto, unit_t *u, int IOPportnum) {
 int portnum;

 portnum = ((u->chassis - 1) * 64) + ((u->geoslot - 1) * 8) + IOPportnum + 1;
 pcap_snprintf(buf, bufsize, "%s_%d", proto, portnum);
}
