
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int bufsize; void* buffer; int errbuf; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int pcap_snprintf (int ,int ,char*) ;
 void* realloc (void*,int ) ;

__attribute__((used)) static int
grow_buffer(pcap_t *p, u_int bufsize)
{
 void *bigger_buffer;

 bigger_buffer = realloc(p->buffer, bufsize);
 if (bigger_buffer == ((void*)0)) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "out of memory");
  return (0);
 }
 p->buffer = bigger_buffer;
 p->bufsize = bufsize;
 return (1);
}
