
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_int ;
typedef int u_char ;
typedef int tsresol_opt ;
struct option_header {int option_code; int option_length; } ;
struct block_cursor {scalar_t__ data_remaining; } ;
struct TYPE_4__ {int swapped; } ;
typedef TYPE_1__ pcap_t ;





 int PCAP_ERRBUF_SIZE ;
 int SWAPLL (int) ;
 struct option_header* get_opthdr_from_block_data (TYPE_1__*,struct block_cursor*,char*) ;
 void* get_optvalue_from_block_data (struct block_cursor*,struct option_header*,char*) ;
 int memcpy (int*,void*,int) ;
 int pcap_snprintf (char*,int ,char*,...) ;

__attribute__((used)) static int
process_idb_options(pcap_t *p, struct block_cursor *cursor, u_int *tsresol,
    uint64_t *tsoffset, int *is_binary, char *errbuf)
{
 struct option_header *opthdr;
 void *optvalue;
 int saw_tsresol, saw_tsoffset;
 u_char tsresol_opt;
 u_int i;

 saw_tsresol = 0;
 saw_tsoffset = 0;
 while (cursor->data_remaining != 0) {



  opthdr = get_opthdr_from_block_data(p, cursor, errbuf);
  if (opthdr == ((void*)0)) {



   return (-1);
  }




  optvalue = get_optvalue_from_block_data(cursor, opthdr,
      errbuf);
  if (optvalue == ((void*)0)) {



   return (-1);
  }

  switch (opthdr->option_code) {

  case 128:
   if (opthdr->option_length != 0) {
    pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
        "Interface Description Block has opt_endofopt option with length %u != 0",
        opthdr->option_length);
    return (-1);
   }
   goto done;

  case 129:
   if (opthdr->option_length != 1) {
    pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
        "Interface Description Block has if_tsresol option with length %u != 1",
        opthdr->option_length);
    return (-1);
   }
   if (saw_tsresol) {
    pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
        "Interface Description Block has more than one if_tsresol option");
    return (-1);
   }
   saw_tsresol = 1;
   memcpy(&tsresol_opt, optvalue, sizeof(tsresol_opt));
   if (tsresol_opt & 0x80) {



    *is_binary = 1;
    *tsresol = 1 << (tsresol_opt & 0x7F);
   } else {



    *is_binary = 0;
    *tsresol = 1;
    for (i = 0; i < tsresol_opt; i++)
     *tsresol *= 10;
   }
   if (*tsresol == 0) {



    if (tsresol_opt & 0x80) {
     pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
         "Interface Description Block if_tsresol option resolution 2^-%u is too high",
         tsresol_opt & 0x7F);
    } else {
     pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
         "Interface Description Block if_tsresol option resolution 10^-%u is too high",
         tsresol_opt);
    }
    return (-1);
   }
   break;

  case 130:
   if (opthdr->option_length != 8) {
    pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
        "Interface Description Block has if_tsoffset option with length %u != 8",
        opthdr->option_length);
    return (-1);
   }
   if (saw_tsoffset) {
    pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
        "Interface Description Block has more than one if_tsoffset option");
    return (-1);
   }
   saw_tsoffset = 1;
   memcpy(tsoffset, optvalue, sizeof(*tsoffset));
   if (p->swapped)
    *tsoffset = SWAPLL(*tsoffset);
   break;

  default:
   break;
  }
 }

done:
 return (0);
}
