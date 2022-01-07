
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pcap_t ;
struct TYPE_4__ {int pid; int * p; struct TYPE_4__* next; } ;
typedef TYPE_1__ pcap_dag_node_t ;


 int atexit (int ) ;
 int atexit_handler ;
 int atexit_handler_installed ;
 int getpid () ;
 TYPE_1__* malloc (int) ;
 TYPE_1__* pcap_dags ;

__attribute__((used)) static int
new_pcap_dag(pcap_t *p)
{
 pcap_dag_node_t *node = ((void*)0);

 if ((node = malloc(sizeof(pcap_dag_node_t))) == ((void*)0)) {
  return -1;
 }

 if (!atexit_handler_installed) {
  atexit(atexit_handler);
  atexit_handler_installed = 1;
 }

 node->next = pcap_dags;
 node->p = p;
 node->pid = getpid();

 pcap_dags = node;

 return 0;
}
