
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {TYPE_1__* its; } ;
struct iort_node {scalar_t__ type; TYPE_2__ entries; } ;
struct TYPE_3__ {int xref; } ;


 scalar_t__ ACPI_IORT_NODE_ITS_GROUP ;
 int ENOENT ;
 int KASSERT (int,char*) ;
 struct iort_node* iort_pci_rc_map (int ,int ,scalar_t__,int *) ;

int
acpi_iort_map_pci_msi(u_int seg, u_int rid, u_int *xref, u_int *devid)
{
 struct iort_node *node;

 node = iort_pci_rc_map(seg, rid, ACPI_IORT_NODE_ITS_GROUP, devid);
 if (node == ((void*)0))
  return (ENOENT);


 KASSERT(node->type == ACPI_IORT_NODE_ITS_GROUP, ("bad group"));


 *xref = node->entries.its[0].xref;
 return (0);
}
