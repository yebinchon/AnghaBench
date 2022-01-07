
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pcap_stat {int ps_drop; } ;
struct pcap_dag {scalar_t__ drop_attr; struct pcap_stat stat; int dag_ref; } ;
struct TYPE_3__ {int errbuf; struct pcap_dag* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int dag_err_t ;


 int PCAP_ERRBUF_SIZE ;
 scalar_t__ dag_config_get_uint32_attribute_ex (int ,scalar_t__,int *) ;
 int dag_config_strerror (int) ;
 scalar_t__ kDagErrNone ;
 scalar_t__ kNullAttributeUuid ;
 int pcap_snprintf (int ,int ,char*,int ) ;

__attribute__((used)) static int
dag_stats(pcap_t *p, struct pcap_stat *ps) {
 struct pcap_dag *pd = p->priv;
 uint32_t stream_drop;
 dag_err_t dag_error;
 if(pd->drop_attr != kNullAttributeUuid) {



  if ((dag_error = dag_config_get_uint32_attribute_ex(pd->dag_ref, pd->drop_attr, &stream_drop) == kDagErrNone)) {
   pd->stat.ps_drop = stream_drop;
  } else {
   pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "reading stream drop attribute: %s",
     dag_config_strerror(dag_error));
   return -1;
  }
 }

 *ps = pd->stat;

 return 0;
}
