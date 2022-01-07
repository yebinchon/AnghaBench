
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* buffer; int bufsize; int errbuf; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int free (unsigned char*) ;
 scalar_t__ malloc (int) ;
 int pcap_snprintf (int ,int ,char*,...) ;

__attribute__((used)) static int
pcap_setuserbuffer_npf(pcap_t *p, int size)
{
 unsigned char *new_buff;

 if (size<=0) {

  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "Error: invalid size %d",size);
  return (-1);
 }


 new_buff=(unsigned char*)malloc(sizeof(char)*size);

 if (!new_buff) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "Error: not enough memory");
  return (-1);
 }

 free(p->buffer);

 p->buffer=new_buff;
 p->bufsize=size;

 return (0);
}
