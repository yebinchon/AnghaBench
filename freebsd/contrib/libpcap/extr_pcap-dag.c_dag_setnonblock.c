
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct pcap_dag {int dag_flags; int dag_stream; } ;
struct TYPE_4__ {int errbuf; int fd; struct pcap_dag* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int dag_size_t ;


 int DAGF_NONBLOCK ;
 int PCAP_ERRBUF_SIZE ;
 scalar_t__ dag_get_stream_poll64 (int ,int ,int*,struct timeval*,struct timeval*) ;
 scalar_t__ dag_set_stream_poll64 (int ,int ,int,struct timeval*,struct timeval*) ;
 int errno ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*) ;
 scalar_t__ pcap_setnonblock_fd (TYPE_1__*,int) ;

__attribute__((used)) static int
dag_setnonblock(pcap_t *p, int nonblock)
{
 struct pcap_dag *pd = p->priv;
 dag_size_t mindata;
 struct timeval maxwait;
 struct timeval poll;







 if (pcap_setnonblock_fd(p, nonblock) < 0)
  return (-1);

 if (dag_get_stream_poll64(p->fd, pd->dag_stream,
    &mindata, &maxwait, &poll) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "dag_get_stream_poll");
  return -1;
 }





 if(nonblock)
  mindata = 0;
 else
  mindata = 65536;

 if (dag_set_stream_poll64(p->fd, pd->dag_stream,
    mindata, &maxwait, &poll) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "dag_set_stream_poll");
  return -1;
 }

 if (nonblock) {
  pd->dag_flags |= DAGF_NONBLOCK;
 } else {
  pd->dag_flags &= ~DAGF_NONBLOCK;
 }
 return (0);
}
