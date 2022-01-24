#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct efi_md {size_t md_type; int md_pages; int md_attr; int /*<<< orphan*/  md_phys; int /*<<< orphan*/  md_virt; } ;
struct efi_map_header {int descriptor_size; int memory_size; } ;

/* Variables and functions */
 int EFI_MD_ATTR_MORE_RELIABLE ; 
 int EFI_MD_ATTR_NV ; 
 int EFI_MD_ATTR_RO ; 
 int EFI_MD_ATTR_RP ; 
 int EFI_MD_ATTR_RT ; 
 int EFI_MD_ATTR_UC ; 
 int EFI_MD_ATTR_UCE ; 
 int EFI_MD_ATTR_WB ; 
 int EFI_MD_ATTR_WC ; 
 int EFI_MD_ATTR_WP ; 
 int EFI_MD_ATTR_WT ; 
 int EFI_MD_ATTR_XP ; 
#define  EFI_MD_TYPE_BS_CODE 132 
#define  EFI_MD_TYPE_BS_DATA 131 
#define  EFI_MD_TYPE_CODE 130 
#define  EFI_MD_TYPE_DATA 129 
#define  EFI_MD_TYPE_FREE 128 
 int PAGE_SIZE ; 
 int RB_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int boothowto ; 
 struct efi_md* FUNC1 (struct efi_md*,int) ; 
 size_t FUNC2 (char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(struct efi_map_header *efihdr, vm_paddr_t *physmap,
    int *physmap_idx)
{
	struct efi_md *map, *p;
	const char *type;
	size_t efisz;
	int ndesc, i;

	static const char *types[] = {
		"Reserved",
		"LoaderCode",
		"LoaderData",
		"BootServicesCode",
		"BootServicesData",
		"RuntimeServicesCode",
		"RuntimeServicesData",
		"ConventionalMemory",
		"UnusableMemory",
		"ACPIReclaimMemory",
		"ACPIMemoryNVS",
		"MemoryMappedIO",
		"MemoryMappedIOPortSpace",
		"PalCode",
		"PersistentMemory"
	};

	/*
	 * Memory map data provided by UEFI via the GetMemoryMap
	 * Boot Services API.
	 */
	efisz = (sizeof(struct efi_map_header) + 0xf) & ~0xf;
	map = (struct efi_md *)((uint8_t *)efihdr + efisz);

	if (efihdr->descriptor_size == 0)
		return;
	ndesc = efihdr->memory_size / efihdr->descriptor_size;

	if (boothowto & RB_VERBOSE)
		FUNC3("%23s %12s %12s %8s %4s\n",
		    "Type", "Physical", "Virtual", "#Pages", "Attr");

	for (i = 0, p = map; i < ndesc; i++,
	    p = FUNC1(p, efihdr->descriptor_size)) {
		if (boothowto & RB_VERBOSE) {
			if (p->md_type < FUNC2(types))
				type = types[p->md_type];
			else
				type = "<INVALID>";
			FUNC3("%23s %012lx %12p %08lx ", type, p->md_phys,
			    p->md_virt, p->md_pages);
			if (p->md_attr & EFI_MD_ATTR_UC)
				FUNC3("UC ");
			if (p->md_attr & EFI_MD_ATTR_WC)
				FUNC3("WC ");
			if (p->md_attr & EFI_MD_ATTR_WT)
				FUNC3("WT ");
			if (p->md_attr & EFI_MD_ATTR_WB)
				FUNC3("WB ");
			if (p->md_attr & EFI_MD_ATTR_UCE)
				FUNC3("UCE ");
			if (p->md_attr & EFI_MD_ATTR_WP)
				FUNC3("WP ");
			if (p->md_attr & EFI_MD_ATTR_RP)
				FUNC3("RP ");
			if (p->md_attr & EFI_MD_ATTR_XP)
				FUNC3("XP ");
			if (p->md_attr & EFI_MD_ATTR_NV)
				FUNC3("NV ");
			if (p->md_attr & EFI_MD_ATTR_MORE_RELIABLE)
				FUNC3("MORE_RELIABLE ");
			if (p->md_attr & EFI_MD_ATTR_RO)
				FUNC3("RO ");
			if (p->md_attr & EFI_MD_ATTR_RT)
				FUNC3("RUNTIME");
			FUNC3("\n");
		}

		switch (p->md_type) {
		case EFI_MD_TYPE_CODE:
		case EFI_MD_TYPE_DATA:
		case EFI_MD_TYPE_BS_CODE:
		case EFI_MD_TYPE_BS_DATA:
		case EFI_MD_TYPE_FREE:
			/*
			 * We're allowed to use any entry with these types.
			 */
			break;
		default:
			continue;
		}

		if (!FUNC0(p->md_phys, (p->md_pages * PAGE_SIZE),
		    physmap, physmap_idx))
			break;
	}
}