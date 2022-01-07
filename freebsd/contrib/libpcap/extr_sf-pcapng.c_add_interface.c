
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int u_int ;
struct pcap_ng_sf {int ifcount; int ifaces_size; int user_tsresol; struct pcap_ng_if* ifaces; } ;
struct pcap_ng_if {int tsresol; int scale_factor; int scale_type; scalar_t__ tsoffset; } ;
struct block_cursor {int dummy; } ;
struct TYPE_4__ {struct pcap_ng_sf* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int bpf_u_int32 ;


 int PASS_THROUGH ;
 int PCAP_ERRBUF_SIZE ;
 int SCALE_DOWN_BIN ;
 int SCALE_DOWN_DEC ;
 int SCALE_UP_BIN ;
 int SCALE_UP_DEC ;
 struct pcap_ng_if* malloc (int) ;
 int pcap_snprintf (char*,int ,char*,int) ;
 int process_idb_options (TYPE_1__*,struct block_cursor*,int*,scalar_t__*,int*,char*) ;
 struct pcap_ng_if* realloc (struct pcap_ng_if*,int) ;

__attribute__((used)) static int
add_interface(pcap_t *p, struct block_cursor *cursor, char *errbuf)
{
 struct pcap_ng_sf *ps;
 u_int tsresol;
 uint64_t tsoffset;
 int is_binary;

 ps = p->priv;




 ps->ifcount++;




 if (ps->ifcount > ps->ifaces_size) {



  bpf_u_int32 new_ifaces_size;
  struct pcap_ng_if *new_ifaces;

  if (ps->ifaces_size == 0) {
   new_ifaces_size = 1;
   new_ifaces = malloc(sizeof (struct pcap_ng_if));
  } else {






   if (ps->ifaces_size * 2 < ps->ifaces_size) {






    pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
        "more than %u interfaces in the file",
        0x80000000U);
    return (0);
   }





   new_ifaces_size = ps->ifaces_size * 2;
   if (new_ifaces_size * sizeof (struct pcap_ng_if) < new_ifaces_size) {
    pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
        "more than %u interfaces in the file",
        0xFFFFFFFFU / ((u_int)sizeof (struct pcap_ng_if)));
    return (0);
   }
   new_ifaces = realloc(ps->ifaces, new_ifaces_size * sizeof (struct pcap_ng_if));
  }
  if (new_ifaces == ((void*)0)) {




   pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
       "out of memory for per-interface information (%u interfaces)",
       ps->ifcount);
   return (0);
  }
  ps->ifaces_size = new_ifaces_size;
  ps->ifaces = new_ifaces;
 }




 tsresol = 1000000;
 is_binary = 0;
 tsoffset = 0;





 if (process_idb_options(p, cursor, &tsresol, &tsoffset, &is_binary,
     errbuf) == -1)
  return (0);

 ps->ifaces[ps->ifcount - 1].tsresol = tsresol;
 ps->ifaces[ps->ifcount - 1].tsoffset = tsoffset;





 if (tsresol == ps->user_tsresol) {




  ps->ifaces[ps->ifcount - 1].scale_type = PASS_THROUGH;
 } else if (tsresol > ps->user_tsresol) {




  if (is_binary)
   ps->ifaces[ps->ifcount - 1].scale_type = SCALE_DOWN_BIN;
  else {



   ps->ifaces[ps->ifcount - 1].scale_factor = tsresol/ps->user_tsresol;
   ps->ifaces[ps->ifcount - 1].scale_type = SCALE_DOWN_DEC;
  }
 } else {




  if (is_binary)
   ps->ifaces[ps->ifcount - 1].scale_type = SCALE_UP_BIN;
  else {



   ps->ifaces[ps->ifcount - 1].scale_factor = ps->user_tsresol/tsresol;
   ps->ifaces[ps->ifcount - 1].scale_type = SCALE_UP_DEC;
  }
 }
 return (1);
}
