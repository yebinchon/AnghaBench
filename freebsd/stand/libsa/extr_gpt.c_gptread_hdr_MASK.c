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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct gpt_hdr {scalar_t__ hdr_lba_self; int hdr_revision; int hdr_entsz; scalar_t__ hdr_entries; scalar_t__ hdr_crc_self; int /*<<< orphan*/  hdr_size; int /*<<< orphan*/  hdr_sig; } ;
struct gpt_ent {int dummy; } ;
struct dsk {int dummy; } ;

/* Variables and functions */
 char* BOOTPROG ; 
 int DEV_BSIZE ; 
 int /*<<< orphan*/  GPT_HDR_SIG ; 
 scalar_t__ MAXTBLENTS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gpt_hdr*,int) ; 
 scalar_t__ FUNC2 (struct gpt_hdr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct dsk*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*) ; 
 int /*<<< orphan*/  secbuf ; 

__attribute__((used)) static int
FUNC5(const char *which, struct dsk *dskp, struct gpt_hdr *hdr,
    uint64_t hdrlba)
{
	uint32_t crc;

	if (FUNC3(dskp, secbuf, hdrlba, 1)) {
		FUNC4("%s: unable to read %s GPT header\n", BOOTPROG, which);
		return (-1);
	}
	FUNC1(secbuf, hdr, sizeof(*hdr));
	if (FUNC0(hdr->hdr_sig, GPT_HDR_SIG, sizeof(hdr->hdr_sig)) != 0 ||
	    hdr->hdr_lba_self != hdrlba || hdr->hdr_revision < 0x00010000 ||
	    hdr->hdr_entsz < sizeof(struct gpt_ent) ||
	    hdr->hdr_entries > MAXTBLENTS || DEV_BSIZE % hdr->hdr_entsz != 0) {
		FUNC4("%s: invalid %s GPT header\n", BOOTPROG, which);
		return (-1);
	}
	crc = hdr->hdr_crc_self;
	hdr->hdr_crc_self = 0;
	if (FUNC2(hdr, hdr->hdr_size) != crc) {
		FUNC4("%s: %s GPT header checksum mismatch\n", BOOTPROG,
		    which);
		return (-1);
	}
	hdr->hdr_crc_self = crc;
	return (0);
}