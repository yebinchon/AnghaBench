
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {int smmu_v3; int smmu; int pci_rc; } ;
struct iort_node {int type; TYPE_1__ data; int node_offset; } ;
struct TYPE_7__ {int Type; scalar_t__ NodeData; } ;
typedef int ACPI_IORT_SMMU_V3 ;
typedef int ACPI_IORT_SMMU ;
typedef int ACPI_IORT_ROOT_COMPLEX ;
typedef TYPE_2__ ACPI_IORT_NODE ;






 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct iort_node*,int ) ;
 int free (struct iort_node*,int ) ;
 int iort_copy_data (struct iort_node*,TYPE_2__*) ;
 int iort_copy_its (struct iort_node*,TYPE_2__*) ;
 int its_groups ;
 struct iort_node* malloc (int,int ,int) ;
 int memcpy (int *,int *,int) ;
 int next ;
 int pci_nodes ;
 int printf (char*,int) ;
 int smmu_nodes ;

__attribute__((used)) static void
iort_add_nodes(ACPI_IORT_NODE *node_entry, u_int node_offset)
{
 ACPI_IORT_ROOT_COMPLEX *pci_rc;
 ACPI_IORT_SMMU *smmu;
 ACPI_IORT_SMMU_V3 *smmu_v3;
 struct iort_node *node;

 node = malloc(sizeof(*node), M_DEVBUF, M_WAITOK | M_ZERO);
 node->type = node_entry->Type;
 node->node_offset = node_offset;


 switch(node_entry->Type) {
 case 130:
  pci_rc = (ACPI_IORT_ROOT_COMPLEX *)node_entry->NodeData;
  memcpy(&node->data.pci_rc, pci_rc, sizeof(*pci_rc));
  iort_copy_data(node, node_entry);
  TAILQ_INSERT_TAIL(&pci_nodes, node, next);
  break;
 case 129:
  smmu = (ACPI_IORT_SMMU *)node_entry->NodeData;
  memcpy(&node->data.smmu, smmu, sizeof(*smmu));
  iort_copy_data(node, node_entry);
  TAILQ_INSERT_TAIL(&smmu_nodes, node, next);
  break;
 case 128:
  smmu_v3 = (ACPI_IORT_SMMU_V3 *)node_entry->NodeData;
  memcpy(&node->data.smmu_v3, smmu_v3, sizeof(*smmu_v3));
  iort_copy_data(node, node_entry);
  TAILQ_INSERT_TAIL(&smmu_nodes, node, next);
  break;
 case 131:
  iort_copy_its(node, node_entry);
  TAILQ_INSERT_TAIL(&its_groups, node, next);
  break;
 default:
  printf("ACPI: IORT: Dropping unhandled type %u\n",
      node_entry->Type);
  free(node, M_DEVBUF);
  break;
 }
}
