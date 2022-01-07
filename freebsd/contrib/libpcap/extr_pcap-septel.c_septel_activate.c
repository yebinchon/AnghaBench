
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ snapshot; int selectable_fd; int stats_op; int setnonblock_op; int getnonblock_op; int * set_datalink_op; int setfilter_op; int inject_op; int read_op; scalar_t__ bufsize; int linktype; } ;
typedef TYPE_1__ pcap_t ;


 int DLT_MTP2 ;
 scalar_t__ MAXIMUM_SNAPLEN ;
 int septel_getnonblock ;
 int septel_inject ;
 int septel_read ;
 int septel_setfilter ;
 int septel_setnonblock ;
 int septel_stats ;

__attribute__((used)) static pcap_t *septel_activate(pcap_t* handle) {

  handle->linktype = DLT_MTP2;
  if (handle->snapshot <= 0 || handle->snapshot > MAXIMUM_SNAPLEN)
    handle->snapshot = MAXIMUM_SNAPLEN;

  handle->bufsize = 0;




  handle->selectable_fd = -1;

  handle->read_op = septel_read;
  handle->inject_op = septel_inject;
  handle->setfilter_op = septel_setfilter;
  handle->set_datalink_op = ((void*)0);
  handle->getnonblock_op = septel_getnonblock;
  handle->setnonblock_op = septel_setnonblock;
  handle->stats_op = septel_stats;

  return 0;
}
