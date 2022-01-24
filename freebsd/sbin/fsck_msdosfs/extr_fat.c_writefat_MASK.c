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
typedef  int u_int ;
typedef  int u_char ;
struct fatEntry {int next; } ;
struct bootblock {size_t FATsecs; size_t bpbBytesPerSec; int ClustMask; scalar_t__ ValidFat; scalar_t__ NumClusters; int bpbFATs; size_t bpbResSectors; scalar_t__ NumFree; scalar_t__ bpbMedia; } ;
typedef  size_t off_t ;
typedef  scalar_t__ cl_t ;

/* Variables and functions */
#define  CLUST16_MASK 129 
#define  CLUST32_MASK 128 
 scalar_t__ CLUST_FIRST ; 
 int CLUST_FREE ; 
 int FSFATAL ; 
 int FSOK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int,struct bootblock*,scalar_t__,int**) ; 
 int* FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 size_t FUNC3 (int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int,int*,size_t) ; 

int
FUNC7(int fs, struct bootblock *boot, struct fatEntry *fat, int correct_fat)
{
	u_char *buffer, *p;
	cl_t cl;
	u_int i;
	size_t fatsz;
	off_t off;
	int ret = FSOK;

	fatsz = boot->FATsecs * boot->bpbBytesPerSec;
	buffer = FUNC1(boot->FATsecs, boot->bpbBytesPerSec);
	if (buffer == NULL) {
		FUNC5("No space for FAT sectors (%zu)",
		    (size_t)boot->FATsecs);
		return FSFATAL;
	}
	boot->NumFree = 0;
	p = buffer;
	if (correct_fat) {
		*p++ = (u_char)boot->bpbMedia;
		*p++ = 0xff;
		*p++ = 0xff;
		switch (boot->ClustMask) {
		case CLUST16_MASK:
			*p++ = 0xff;
			break;
		case CLUST32_MASK:
			*p++ = 0x0f;
			*p++ = 0xff;
			*p++ = 0xff;
			*p++ = 0xff;
			*p++ = 0x0f;
			break;
		}
	} else {
		/* use same FAT signature as the old FAT has */
		int count;
		u_char *old_fat;

		switch (boot->ClustMask) {
		case CLUST32_MASK:
			count = 8;
			break;
		case CLUST16_MASK:
			count = 4;
			break;
		default:
			count = 3;
			break;
		}

		if (!FUNC0(fs, boot, boot->ValidFat >= 0 ? boot->ValidFat :0,
					 &old_fat)) {
			FUNC2(buffer);
			return FSFATAL;
		}

		FUNC4(p, old_fat, count);
		FUNC2(old_fat);
		p += count;
	}

	for (cl = CLUST_FIRST; cl < boot->NumClusters; cl++) {
		switch (boot->ClustMask) {
		case CLUST32_MASK:
			if (fat[cl].next == CLUST_FREE)
				boot->NumFree++;
			*p++ = (u_char)fat[cl].next;
			*p++ = (u_char)(fat[cl].next >> 8);
			*p++ = (u_char)(fat[cl].next >> 16);
			*p &= 0xf0;
			*p++ |= (fat[cl].next >> 24)&0x0f;
			break;
		case CLUST16_MASK:
			if (fat[cl].next == CLUST_FREE)
				boot->NumFree++;
			*p++ = (u_char)fat[cl].next;
			*p++ = (u_char)(fat[cl].next >> 8);
			break;
		default:
			if (fat[cl].next == CLUST_FREE)
				boot->NumFree++;
			*p++ = (u_char)fat[cl].next;
			*p = (u_char)((fat[cl].next >> 8) & 0xf);
			cl++;
			if (cl >= boot->NumClusters)
				break;
			if (fat[cl].next == CLUST_FREE)
				boot->NumFree++;
			*p++ |= (u_char)(fat[cl].next << 4);
			*p++ = (u_char)(fat[cl].next >> 4);
			break;
		}
	}
	for (i = 0; i < boot->bpbFATs; i++) {
		off = boot->bpbResSectors + i * boot->FATsecs;
		off *= boot->bpbBytesPerSec;
		if (FUNC3(fs, off, SEEK_SET) != off
		    || (size_t)FUNC6(fs, buffer, fatsz) != fatsz) {
			FUNC5("Unable to write FAT");
			ret = FSFATAL; /* Return immediately?		XXX */
		}
	}
	FUNC2(buffer);
	return ret;
}