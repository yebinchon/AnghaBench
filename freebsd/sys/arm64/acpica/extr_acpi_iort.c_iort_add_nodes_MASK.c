#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_6__ {int /*<<< orphan*/  smmu_v3; int /*<<< orphan*/  smmu; int /*<<< orphan*/  pci_rc; } ;
struct iort_node {int type; TYPE_1__ data; int /*<<< orphan*/  node_offset; } ;
struct TYPE_7__ {int Type; scalar_t__ NodeData; } ;
typedef  int /*<<< orphan*/  ACPI_IORT_SMMU_V3 ;
typedef  int /*<<< orphan*/  ACPI_IORT_SMMU ;
typedef  int /*<<< orphan*/  ACPI_IORT_ROOT_COMPLEX ;
typedef  TYPE_2__ ACPI_IORT_NODE ;

/* Variables and functions */
#define  ACPI_IORT_NODE_ITS_GROUP 131 
#define  ACPI_IORT_NODE_PCI_ROOT_COMPLEX 130 
#define  ACPI_IORT_NODE_SMMU 129 
#define  ACPI_IORT_NODE_SMMU_V3 128 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct iort_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iort_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iort_node*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct iort_node*,TYPE_2__*) ; 
 int /*<<< orphan*/  its_groups ; 
 struct iort_node* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  pci_nodes ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  smmu_nodes ; 

__attribute__((used)) static void
FUNC7(ACPI_IORT_NODE *node_entry, u_int node_offset)
{
	ACPI_IORT_ROOT_COMPLEX *pci_rc;
	ACPI_IORT_SMMU *smmu;
	ACPI_IORT_SMMU_V3 *smmu_v3;
	struct iort_node *node;

	node = FUNC4(sizeof(*node), M_DEVBUF, M_WAITOK | M_ZERO);
	node->type =  node_entry->Type;
	node->node_offset = node_offset;

	/* copy nodes depending on type */
	switch(node_entry->Type) {
	case ACPI_IORT_NODE_PCI_ROOT_COMPLEX:
		pci_rc = (ACPI_IORT_ROOT_COMPLEX *)node_entry->NodeData;
		FUNC5(&node->data.pci_rc, pci_rc, sizeof(*pci_rc));
		FUNC2(node, node_entry);
		FUNC0(&pci_nodes, node, next);
		break;
	case ACPI_IORT_NODE_SMMU:
		smmu = (ACPI_IORT_SMMU *)node_entry->NodeData;
		FUNC5(&node->data.smmu, smmu, sizeof(*smmu));
		FUNC2(node, node_entry);
		FUNC0(&smmu_nodes, node, next);
		break;
	case ACPI_IORT_NODE_SMMU_V3:
		smmu_v3 = (ACPI_IORT_SMMU_V3 *)node_entry->NodeData;
		FUNC5(&node->data.smmu_v3, smmu_v3, sizeof(*smmu_v3));
		FUNC2(node, node_entry);
		FUNC0(&smmu_nodes, node, next);
		break;
	case ACPI_IORT_NODE_ITS_GROUP:
		FUNC3(node, node_entry);
		FUNC0(&its_groups, node, next);
		break;
	default:
		FUNC6("ACPI: IORT: Dropping unhandled type %u\n",
		    node_entry->Type);
		FUNC1(node, M_DEVBUF);
		break;
	}
}