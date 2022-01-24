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
struct nv {int dummy; } ;
struct hast_resource {int hr_compression; } ;

/* Variables and functions */
#define  HAST_COMPRESSION_HOLE 130 
#define  HAST_COMPRESSION_LZF 129 
#define  HAST_COMPRESSION_NONE 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 unsigned char* FUNC3 (void*,size_t*) ; 
 unsigned char* FUNC4 (void*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (struct nv*) ; 

int
FUNC7(const struct hast_resource *res, struct nv *nv, void **datap,
    size_t *sizep, bool *freedatap)
{
	unsigned char *newbuf;
	int compression;
	size_t size;

	size = *sizep;
	compression = res->hr_compression;

	switch (compression) {
	case HAST_COMPRESSION_NONE:
		return (0);
	case HAST_COMPRESSION_HOLE:
		newbuf = FUNC3(*datap, &size);
		break;
	case HAST_COMPRESSION_LZF:
		/* Try 'hole' compression first. */
		newbuf = FUNC3(*datap, &size);
		if (newbuf != NULL)
			compression = HAST_COMPRESSION_HOLE;
		else
			newbuf = FUNC4(*datap, &size);
		break;
	default:
		FUNC0("Invalid compression: %d.", res->hr_compression);
	}

	if (newbuf == NULL) {
		/* Unable to compress the data. */
		return (0);
	}
	FUNC5(nv, FUNC1(compression), "compression");
	if (FUNC6(nv) != 0) {
		FUNC2(newbuf);
		errno = FUNC6(nv);
		return (-1);
	}
	if (*freedatap)
		FUNC2(*datap);
	*freedatap = true;
	*datap = newbuf;
	*sizep = size;

	return (0);
}