#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cab {TYPE_2__* entry_cffolder; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int comptype; int /*<<< orphan*/  compname; } ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_OK ; 
#define  COMPTYPE_LZX 130 
#define  COMPTYPE_MSZIP 129 
#define  COMPTYPE_NONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct archive_read*) ; 
 void const* FUNC2 (struct archive_read*,int*) ; 
 void const* FUNC3 (struct archive_read*,int*) ; 
 void const* FUNC4 (struct archive_read*,int*) ; 

__attribute__((used)) static const void *
FUNC5(struct archive_read *a, ssize_t *avail)
{
	struct cab *cab = (struct cab *)(a->format->data);
	int err;

	err = FUNC1(a);
	if (err < ARCHIVE_OK) {
		*avail = err;
		return (NULL);
	}

	switch (cab->entry_cffolder->comptype) {
	case COMPTYPE_NONE:
		return (FUNC4(a, avail));
	case COMPTYPE_MSZIP:
		return (FUNC2(a, avail));
	case COMPTYPE_LZX:
		return (FUNC3(a, avail));
	default: /* Unsupported compression. */
		FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Unsupported CAB compression : %s",
		    cab->entry_cffolder->compname);
		*avail = ARCHIVE_FAILED;
		return (NULL);
	}
}