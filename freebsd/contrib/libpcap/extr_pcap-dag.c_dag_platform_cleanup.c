
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pcap_dag {int * dag_ref; int dag_stream; } ;
struct TYPE_5__ {int fd; struct pcap_dag* priv; } ;
typedef TYPE_1__ pcap_t ;


 int dag_config_dispose (int *) ;
 scalar_t__ dag_detach_stream (int,int ) ;
 scalar_t__ dag_stop_stream (int,int ) ;
 int delete_pcap_dag (TYPE_1__*) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int pcap_cleanup_live_common (TYPE_1__*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void
dag_platform_cleanup(pcap_t *p)
{
 struct pcap_dag *pd = p->priv;

 if(dag_stop_stream(p->fd, pd->dag_stream) < 0)
  fprintf(stderr,"dag_stop_stream: %s\n", strerror(errno));

 if(dag_detach_stream(p->fd, pd->dag_stream) < 0)
  fprintf(stderr,"dag_detach_stream: %s\n", strerror(errno));

 if(pd->dag_ref != ((void*)0)) {
  dag_config_dispose(pd->dag_ref);
  p->fd = -1;
  pd->dag_ref = ((void*)0);
 }
 delete_pcap_dag(p);
 pcap_cleanup_live_common(p);

}
