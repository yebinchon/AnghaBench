
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_cursor {size_t data_remaining; void* data; int block_type; } ;


 int PCAP_ERRBUF_SIZE ;
 int pcap_snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static void *
get_from_block_data(struct block_cursor *cursor, size_t chunk_size,
    char *errbuf)
{
 void *data;





 if (cursor->data_remaining < chunk_size) {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
      "block of type %u in pcapng dump file is too short",
      cursor->block_type);
  return (((void*)0));
 }




 data = cursor->data;
 cursor->data += chunk_size;
 cursor->data_remaining -= chunk_size;
 return (data);
}
