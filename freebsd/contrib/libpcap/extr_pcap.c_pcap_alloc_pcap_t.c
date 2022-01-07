
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; int selectable_fd; int * priv; int * required_select_timeout; int handle; } ;
typedef TYPE_1__ pcap_t ;


 int INVALID_HANDLE_VALUE ;
 int PCAP_ERRBUF_SIZE ;
 int errno ;
 char* malloc (int) ;
 int memset (char*,int ,int) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;

__attribute__((used)) static pcap_t *
pcap_alloc_pcap_t(char *ebuf, size_t size)
{
 char *chunk;
 pcap_t *p;







 chunk = malloc(sizeof (pcap_t) + size);
 if (chunk == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE,
      errno, "malloc");
  return (((void*)0));
 }
 memset(chunk, 0, sizeof (pcap_t) + size);




 p = (pcap_t *)chunk;




 p->fd = -1;

 p->selectable_fd = -1;
 p->required_select_timeout = ((void*)0);



 if (size == 0) {

  p->priv = ((void*)0);
 } else {




  p->priv = (void *)(chunk + sizeof (pcap_t));
 }

 return (p);
}
