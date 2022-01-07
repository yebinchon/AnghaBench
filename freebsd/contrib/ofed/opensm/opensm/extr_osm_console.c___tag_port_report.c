
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_4__ {struct TYPE_4__* next; int print_desc; int port_num; int node_guid; } ;
typedef TYPE_1__ port_report_t ;


 scalar_t__ IB_NODE_DESCRIPTION_SIZE ;
 TYPE_1__* malloc (int) ;
 int memcpy (int ,char*,scalar_t__) ;

__attribute__((used)) static void
__tag_port_report(port_report_t ** head, uint64_t node_guid,
    uint8_t port_num, char *print_desc)
{
 port_report_t *rep = malloc(sizeof(*rep));
 if (!rep)
  return;

 rep->node_guid = node_guid;
 rep->port_num = port_num;
 memcpy(rep->print_desc, print_desc, IB_NODE_DESCRIPTION_SIZE + 1);
 rep->next = ((void*)0);
 if (*head) {
  rep->next = *head;
  *head = rep;
 } else
  *head = rep;
}
