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
struct tar {int dummy; } ;
struct gnu_sparse {scalar_t__* offset; scalar_t__* numbytes; } ;
struct archive_read {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 scalar_t__ FUNC0 (struct archive_read*,struct tar*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 

__attribute__((used)) static int
FUNC2(struct archive_read *a, struct tar *tar,
    const struct gnu_sparse *sparse, int length)
{
	while (length > 0 && sparse->offset[0] != 0) {
		if (FUNC0(a, tar,
		    FUNC1(sparse->offset, sizeof(sparse->offset)),
		    FUNC1(sparse->numbytes, sizeof(sparse->numbytes)))
		    != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
		sparse++;
		length--;
	}
	return (ARCHIVE_OK);
}