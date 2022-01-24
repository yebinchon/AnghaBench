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
struct ata_params {int security_status; int master_passwd_revision; int /*<<< orphan*/  enhanced_erase_time; int /*<<< orphan*/  erase_time; } ;

/* Variables and functions */
 int ATA_SECURITY_COUNT_EXP ; 
 int ATA_SECURITY_ENABLED ; 
 int ATA_SECURITY_ENH_SUPP ; 
 int ATA_SECURITY_FROZEN ; 
 int ATA_SECURITY_LEVEL ; 
 int ATA_SECURITY_LOCKED ; 
 int ATA_SECURITY_SUPPORTED ; 
 int CAM_ARG_VERBOSE ; 
 int arglist ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct ata_params *parm)
{

	FUNC1("\nSecurity Option           Value\n");
	if (arglist & CAM_ARG_VERBOSE) {
		FUNC1("status                    %04x\n",
		       parm->security_status);
	}
	FUNC1("supported                 %s\n",
		parm->security_status & ATA_SECURITY_SUPPORTED ? "yes" : "no");
	if (!(parm->security_status & ATA_SECURITY_SUPPORTED))
		return;
	FUNC1("enabled                   %s\n",
		parm->security_status & ATA_SECURITY_ENABLED ? "yes" : "no");
	FUNC1("drive locked              %s\n",
		parm->security_status & ATA_SECURITY_LOCKED ? "yes" : "no");
	FUNC1("security config frozen    %s\n",
		parm->security_status & ATA_SECURITY_FROZEN ? "yes" : "no");
	FUNC1("count expired             %s\n",
		parm->security_status & ATA_SECURITY_COUNT_EXP ? "yes" : "no");
	FUNC1("security level            %s\n",
		parm->security_status & ATA_SECURITY_LEVEL ? "maximum" : "high");
	FUNC1("enhanced erase supported  %s\n",
		parm->security_status & ATA_SECURITY_ENH_SUPP ? "yes" : "no");
	FUNC1("erase time                ");
	FUNC0(parm->erase_time);
	FUNC1("\n");
	FUNC1("enhanced erase time       ");
	FUNC0(parm->enhanced_erase_time);
	FUNC1("\n");
	FUNC1("master password rev       %04x%s\n",
		parm->master_passwd_revision,
		parm->master_passwd_revision == 0x0000 ||
		parm->master_passwd_revision == 0xFFFF ?  " (unsupported)" : "");
}