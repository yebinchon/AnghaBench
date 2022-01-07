
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; int selectable_fd; int fcode; scalar_t__ tstamp_precision_count; int * tstamp_precision_list; scalar_t__ tstamp_type_count; int * tstamp_type_list; scalar_t__ dlt_count; int * dlt_list; int * buffer; } ;
typedef TYPE_1__ pcap_t ;


 int close (int) ;
 int free (int *) ;
 int pcap_freecode (int *) ;

void
pcap_cleanup_live_common(pcap_t *p)
{
 if (p->buffer != ((void*)0)) {
  free(p->buffer);
  p->buffer = ((void*)0);
 }
 if (p->dlt_list != ((void*)0)) {
  free(p->dlt_list);
  p->dlt_list = ((void*)0);
  p->dlt_count = 0;
 }
 if (p->tstamp_type_list != ((void*)0)) {
  free(p->tstamp_type_list);
  p->tstamp_type_list = ((void*)0);
  p->tstamp_type_count = 0;
 }
 if (p->tstamp_precision_list != ((void*)0)) {
  free(p->tstamp_precision_list);
  p->tstamp_precision_list = ((void*)0);
  p->tstamp_precision_count = 0;
 }
 pcap_freecode(&p->fcode);

 if (p->fd >= 0) {
  close(p->fd);
  p->fd = -1;
 }
 p->selectable_fd = -1;

}
