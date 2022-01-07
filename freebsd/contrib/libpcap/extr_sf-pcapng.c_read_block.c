
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct block_header {int block_type; int total_length; } ;
typedef struct block_header u_char ;
struct pcap_ng_sf {int max_blocksize; } ;
struct block_trailer {int dummy; } ;
struct block_cursor {size_t data_remaining; int block_type; struct block_header* data; } ;
struct TYPE_3__ {int bufsize; void* buffer; scalar_t__ swapped; struct pcap_ng_sf* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int bhdr ;
typedef int FILE ;


 int PCAP_ERRBUF_SIZE ;
 void* SWAPLONG (int) ;
 int memcpy (void*,struct block_header*,int) ;
 int pcap_snprintf (char*,int ,char*,...) ;
 int read_bytes (int *,struct block_header*,size_t,int,char*) ;
 void* realloc (void*,int) ;

__attribute__((used)) static int
read_block(FILE *fp, pcap_t *p, struct block_cursor *cursor, char *errbuf)
{
 struct pcap_ng_sf *ps;
 int status;
 struct block_header bhdr;
 u_char *bdata;
 size_t data_remaining;

 ps = p->priv;

 status = read_bytes(fp, &bhdr, sizeof(bhdr), 0, errbuf);
 if (status <= 0)
  return (status);

 if (p->swapped) {
  bhdr.block_type = SWAPLONG(bhdr.block_type);
  bhdr.total_length = SWAPLONG(bhdr.total_length);
 }
 if (bhdr.total_length > 16*1024*1024) {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
      "pcapng block size %u > maximum %u",
      bhdr.total_length, 16*1024*1024);
      return (-1);
 }





 if (bhdr.total_length < sizeof(struct block_header) +
     sizeof(struct block_trailer)) {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
      "block in pcapng dump file has a length of %u < %lu",
      bhdr.total_length,
      (unsigned long)(sizeof(struct block_header) + sizeof(struct block_trailer)));
  return (-1);
 }




 if (p->bufsize < bhdr.total_length) {



  void *bigger_buffer;

  if (bhdr.total_length > ps->max_blocksize) {
   pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "block is larger than maximum block size %u",
       ps->max_blocksize);
   return (-1);
  }
  bigger_buffer = realloc(p->buffer, bhdr.total_length);
  if (bigger_buffer == ((void*)0)) {
   pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "out of memory");
   return (-1);
  }
  p->buffer = bigger_buffer;
 }





 memcpy(p->buffer, &bhdr, sizeof(bhdr));
 bdata = (u_char *)p->buffer + sizeof(bhdr);
 data_remaining = bhdr.total_length - sizeof(bhdr);
 if (read_bytes(fp, bdata, data_remaining, 1, errbuf) == -1)
  return (-1);




 cursor->data = bdata;
 cursor->data_remaining = data_remaining - sizeof(struct block_trailer);
 cursor->block_type = bhdr.block_type;
 return (1);
}
