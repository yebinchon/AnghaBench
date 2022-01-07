
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* iface; } ;
typedef TYPE_1__ unit_t ;
struct TYPE_7__ {int iftype; char* IOPname; char* name; struct TYPE_7__* next; } ;
typedef TYPE_2__ iface_t ;
typedef int bpf_u_int32 ;




 int atoi (char*) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 void* malloc (int) ;
 int memset (char*,int ,int) ;
 int nonUnified_IOP_port_name (char*,int,char*,TYPE_1__*) ;
 int stderr ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int unified_IOP_port_name (char*,int,char*,TYPE_1__*,int) ;

__attribute__((used)) static char *translate_IOP_to_pcap_name(unit_t *u, char *IOPname, bpf_u_int32 iftype) {
 iface_t *iface_ptr, *iface;
 char *name;
 char buf[32];
 char *proto;
 char *port;
 int IOPportnum = 0;

 iface = malloc(sizeof(iface_t));
 if (iface == ((void*)0)) {
  fprintf(stderr, "Error...couldn't allocate memory for interface structure...value of errno is: %d\n", errno);
  return ((void*)0);
 }
 memset((char *)iface, 0, sizeof(iface_t));

 iface->iftype = iftype;

 name = malloc(strlen(IOPname) + 1);
        if (name == ((void*)0)) {
                fprintf(stderr, "Error...couldn't allocate memory for IOPname...value of errno is: %d\n", errno);
                return ((void*)0);
        }

 strcpy(name, IOPname);
 iface->IOPname = name;

 if (strncmp(IOPname, "lo", 2) == 0) {
  IOPportnum = atoi(&IOPname[2]);
  switch (iftype) {
   case 129:
    nonUnified_IOP_port_name(buf, sizeof buf, "lo", u);
    break;
   default:
    unified_IOP_port_name(buf, sizeof buf, "???", u, IOPportnum);
    break;
  }
 } else if (strncmp(IOPname, "eth", 3) == 0) {
  IOPportnum = atoi(&IOPname[3]);
  switch (iftype) {
   case 129:
    nonUnified_IOP_port_name(buf, sizeof buf, "eth", u);
    break;
   default:
    unified_IOP_port_name(buf, sizeof buf, "???", u, IOPportnum);
    break;
  }
 } else if (strncmp(IOPname, "wan", 3) == 0) {
  IOPportnum = atoi(&IOPname[3]);
  switch (iftype) {
   case 128:
    unified_IOP_port_name(buf, sizeof buf, "wan", u, IOPportnum);
    break;
   default:
    unified_IOP_port_name(buf, sizeof buf, "???", u, IOPportnum);
    break;
  }
 } else {
  fprintf(stderr, "Error... invalid IOP name %s\n", IOPname);
  return ((void*)0);
 }

 name = malloc(strlen(buf) + 1);
        if (name == ((void*)0)) {
                fprintf(stderr, "Error...couldn't allocate memory for IOP port name...value of errno is: %d\n", errno);
                return ((void*)0);
        }

 strcpy(name, buf);
 iface->name = name;

 if (u->iface == 0) {
  u->iface = iface;
 } else {
  iface_ptr = u->iface;
  while (iface_ptr->next) {
   iface_ptr = iface_ptr->next;
  }
  iface_ptr->next = iface;
 }
 return iface->name;
}
