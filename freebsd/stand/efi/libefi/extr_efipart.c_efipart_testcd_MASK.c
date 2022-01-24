#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* Media; } ;
struct TYPE_4__ {int /*<<< orphan*/  MediaPresent; scalar_t__ RemovableMedia; } ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;
typedef  TYPE_2__ EFI_BLOCK_IO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MEDIA_CDROM_DP ; 
 scalar_t__ MEDIA_DEVICE_PATH ; 

__attribute__((used)) static bool
FUNC2(EFI_DEVICE_PATH *node, EFI_BLOCK_IO *blkio)
{
	if (FUNC1(node) == MEDIA_DEVICE_PATH &&
	    FUNC0(node) == MEDIA_CDROM_DP) {
		return (true);
	}

	/* cd drive without the media. */
	if (blkio->Media->RemovableMedia &&
	    !blkio->Media->MediaPresent) {
		return (true);
	}

	return (false);
}