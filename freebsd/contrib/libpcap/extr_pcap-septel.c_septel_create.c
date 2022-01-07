
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_septel {int dummy; } ;
struct TYPE_4__ {int setnonblock_op; int getnonblock_op; int activate_op; } ;
typedef TYPE_1__ pcap_t ;


 TYPE_1__* pcap_create_common (char*,int) ;
 int septel_activate ;
 int septel_getnonblock ;
 int septel_setnonblock ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

pcap_t *septel_create(const char *device, char *ebuf, int *is_ours) {
 const char *cp;
 pcap_t *p;


 cp = strrchr(device, '/');
 if (cp == ((void*)0))
  cp = device;
 if (strcmp(cp, "septel") != 0) {

  *is_ours = 0;
  return ((void*)0);
 }


 *is_ours = 1;

 p = pcap_create_common(ebuf, sizeof (struct pcap_septel));
 if (p == ((void*)0))
  return ((void*)0);

 p->activate_op = septel_activate;







 p->getnonblock_op = septel_getnonblock;
 p->setnonblock_op = septel_setnonblock;
 return p;
}
