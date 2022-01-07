
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ nonblock; } ;
struct TYPE_10__ {int (* activate_op ) (TYPE_2__*) ;int (* setnonblock_op ) (TYPE_2__*,int) ;int activated; char* errbuf; int (* cleanup_op ) (TYPE_2__*) ;TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR_ACTIVATED ;
 int initialize_ops (TYPE_2__*) ;
 scalar_t__ pcap_check_activated (TYPE_2__*) ;
 int pcap_snprintf (char*,int ,char*,int ) ;
 int pcap_statustostr (int) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*,int) ;
 int stub3 (TYPE_2__*) ;

int
pcap_activate(pcap_t *p)
{
 int status;
 if (pcap_check_activated(p))
  return (PCAP_ERROR_ACTIVATED);
 status = p->activate_op(p);
 if (status >= 0) {




  if (p->opt.nonblock) {
   status = p->setnonblock_op(p, 1);
   if (status < 0) {




    p->cleanup_op(p);
    initialize_ops(p);
    return (status);
   }
  }
  p->activated = 1;
 } else {
  if (p->errbuf[0] == '\0') {






   pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "%s",
       pcap_statustostr(status));
  }





  initialize_ops(p);
 }
 return (status);
}
