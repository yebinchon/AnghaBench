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
struct efi_md {size_t md_type; int md_attr; int /*<<< orphan*/  md_pages; int /*<<< orphan*/  md_virt; int /*<<< orphan*/  md_phys; } ;

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
 size_t FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct efi_md *p)
{
	const char *type;
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

	if (p->md_type < FUNC0(types))
		type = types[p->md_type];
	else
		type = "<INVALID>";
	FUNC1("%23s %012lx %12p %08lx ", type, p->md_phys,
	    p->md_virt, p->md_pages);
	if (p->md_attr & EFI_MD_ATTR_UC)
		FUNC1("UC ");
	if (p->md_attr & EFI_MD_ATTR_WC)
		FUNC1("WC ");
	if (p->md_attr & EFI_MD_ATTR_WT)
		FUNC1("WT ");
	if (p->md_attr & EFI_MD_ATTR_WB)
		FUNC1("WB ");
	if (p->md_attr & EFI_MD_ATTR_UCE)
		FUNC1("UCE ");
	if (p->md_attr & EFI_MD_ATTR_WP)
		FUNC1("WP ");
	if (p->md_attr & EFI_MD_ATTR_RP)
		FUNC1("RP ");
	if (p->md_attr & EFI_MD_ATTR_XP)
		FUNC1("XP ");
	if (p->md_attr & EFI_MD_ATTR_NV)
		FUNC1("NV ");
	if (p->md_attr & EFI_MD_ATTR_MORE_RELIABLE)
		FUNC1("MORE_RELIABLE ");
	if (p->md_attr & EFI_MD_ATTR_RO)
		FUNC1("RO ");
	if (p->md_attr & EFI_MD_ATTR_RT)
		FUNC1("RUNTIME");
	FUNC1("\n");
}