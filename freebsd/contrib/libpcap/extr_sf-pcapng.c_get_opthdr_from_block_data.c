
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct option_header {void* option_length; void* option_code; } ;
struct block_cursor {int dummy; } ;
struct TYPE_3__ {scalar_t__ swapped; } ;
typedef TYPE_1__ pcap_t ;


 void* SWAPSHORT (void*) ;
 struct option_header* get_from_block_data (struct block_cursor*,int,char*) ;

__attribute__((used)) static struct option_header *
get_opthdr_from_block_data(pcap_t *p, struct block_cursor *cursor, char *errbuf)
{
 struct option_header *opthdr;

 opthdr = get_from_block_data(cursor, sizeof(*opthdr), errbuf);
 if (opthdr == ((void*)0)) {



  return (((void*)0));
 }




 if (p->swapped) {
  opthdr->option_code = SWAPSHORT(opthdr->option_code);
  opthdr->option_length = SWAPSHORT(opthdr->option_length);
 }

 return (opthdr);
}
