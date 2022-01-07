
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pcap_t ;
struct TYPE_3__ {struct TYPE_3__* next; int * p; } ;
typedef TYPE_1__ pcap_dag_node_t ;


 TYPE_1__* pcap_dags ;

__attribute__((used)) static void
delete_pcap_dag(pcap_t *p)
{
 pcap_dag_node_t *curr = ((void*)0), *prev = ((void*)0);

 for (prev = ((void*)0), curr = pcap_dags; curr != ((void*)0) && curr->p != p; prev = curr, curr = curr->next) {

 }

 if (curr != ((void*)0) && curr->p == p) {
  if (prev != ((void*)0)) {
   prev->next = curr->next;
  } else {
   pcap_dags = curr->next;
  }
 }
}
