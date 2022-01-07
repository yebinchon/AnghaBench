
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pid; int * p; } ;


 int dag_platform_cleanup (int *) ;
 int delete_pcap_dag (int *) ;
 scalar_t__ getpid () ;
 TYPE_1__* pcap_dags ;

__attribute__((used)) static void
atexit_handler(void)
{
 while (pcap_dags != ((void*)0)) {
  if (pcap_dags->pid == getpid()) {
   if (pcap_dags->p != ((void*)0))
    dag_platform_cleanup(pcap_dags->p);
  } else {
   delete_pcap_dag(pcap_dags->p);
  }
 }
}
