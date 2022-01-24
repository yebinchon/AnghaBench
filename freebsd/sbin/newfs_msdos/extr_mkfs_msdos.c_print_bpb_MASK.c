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
struct bpb {int bpbBytesPerSec; int bpbSecPerClust; int bpbResSectors; int bpbFATs; int bpbRootDirEnts; int bpbSectors; int bpbMedia; int bpbFATsecs; int bpbSecPerTrack; int bpbHeads; int bpbHiddenSecs; int bpbHugeSectors; int bpbBigFATsecs; int bpbRootClust; scalar_t__ bpbFSInfo; scalar_t__ bpbBackup; } ;

/* Variables and functions */
 scalar_t__ MAXU16 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(struct bpb *bpb)
{
    FUNC0("BytesPerSec=%u SecPerClust=%u ResSectors=%u FATs=%u",
	   bpb->bpbBytesPerSec, bpb->bpbSecPerClust, bpb->bpbResSectors,
	   bpb->bpbFATs);
    if (bpb->bpbRootDirEnts)
	FUNC0(" RootDirEnts=%u", bpb->bpbRootDirEnts);
    if (bpb->bpbSectors)
	FUNC0(" Sectors=%u", bpb->bpbSectors);
    FUNC0(" Media=%#x", bpb->bpbMedia);
    if (bpb->bpbFATsecs)
	FUNC0(" FATsecs=%u", bpb->bpbFATsecs);
    FUNC0(" SecPerTrack=%u Heads=%u HiddenSecs=%u", bpb->bpbSecPerTrack,
	   bpb->bpbHeads, bpb->bpbHiddenSecs);
    if (bpb->bpbHugeSectors)
	FUNC0(" HugeSectors=%u", bpb->bpbHugeSectors);
    if (!bpb->bpbFATsecs) {
	FUNC0(" FATsecs=%u RootCluster=%u", bpb->bpbBigFATsecs,
	       bpb->bpbRootClust);
	FUNC0(" FSInfo=");
	FUNC0(bpb->bpbFSInfo == MAXU16 ? "%#x" : "%u", bpb->bpbFSInfo);
	FUNC0(" Backup=");
	FUNC0(bpb->bpbBackup == MAXU16 ? "%#x" : "%u", bpb->bpbBackup);
    }
    FUNC0("\n");
}