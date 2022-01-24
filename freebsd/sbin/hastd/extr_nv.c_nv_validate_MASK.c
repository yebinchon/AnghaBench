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
struct nvhdr {char* nvh_name; int nvh_namesize; int nvh_type; } ;
struct nv {int nv_error; int /*<<< orphan*/  nv_ebuf; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 unsigned char* FUNC0 (struct nvhdr*) ; 
 size_t FUNC1 (struct nvhdr*) ; 
 size_t FUNC2 (struct nvhdr*) ; 
 size_t FUNC3 (struct nvhdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct nv*) ; 
 int NV_TYPE_FIRST ; 
#define  NV_TYPE_INT16 144 
#define  NV_TYPE_INT16_ARRAY 143 
#define  NV_TYPE_INT32 142 
#define  NV_TYPE_INT32_ARRAY 141 
#define  NV_TYPE_INT64 140 
#define  NV_TYPE_INT64_ARRAY 139 
#define  NV_TYPE_INT8 138 
#define  NV_TYPE_INT8_ARRAY 137 
 int NV_TYPE_LAST ; 
 int NV_TYPE_MASK ; 
#define  NV_TYPE_STRING 136 
#define  NV_TYPE_UINT16 135 
#define  NV_TYPE_UINT16_ARRAY 134 
#define  NV_TYPE_UINT32 133 
#define  NV_TYPE_UINT32_ARRAY 132 
#define  NV_TYPE_UINT64 131 
#define  NV_TYPE_UINT64_ARRAY 130 
#define  NV_TYPE_UINT8 129 
#define  NV_TYPE_UINT8_ARRAY 128 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ ,size_t*) ; 
 int errno ; 
 size_t FUNC8 (char*) ; 

int
FUNC9(struct nv *nv, size_t *extrap)
{
	struct nvhdr *nvh;
	unsigned char *data, *ptr;
	size_t dsize, size, vsize;
	int error;

	if (nv == NULL) {
		errno = ENOMEM;
		return (-1);
	}

	FUNC4(nv);
	FUNC6(nv->nv_error == 0);

	/* TODO: Check that names are unique? */

	error = 0;
	ptr = FUNC7(nv->nv_ebuf, &size);
	while (size > 0) {
		/*
		 * Zeros at the end of the buffer are acceptable.
		 */
		if (ptr[0] == '\0')
			break;
		/*
		 * Minimum size at this point is size of nvhdr structure, one
		 * character long name plus terminating '\0'.
		 */
		if (size < sizeof(*nvh) + 2) {
			error = EINVAL;
			break;
		}
		nvh = (struct nvhdr *)ptr;
		if (size < FUNC2(nvh)) {
			error = EINVAL;
			break;
		}
		if (nvh->nvh_name[nvh->nvh_namesize - 1] != '\0') {
			error = EINVAL;
			break;
		}
		if (FUNC8(nvh->nvh_name) !=
		    (size_t)(nvh->nvh_namesize - 1)) {
			error = EINVAL;
			break;
		}
		if ((nvh->nvh_type & NV_TYPE_MASK) < NV_TYPE_FIRST ||
		    (nvh->nvh_type & NV_TYPE_MASK) > NV_TYPE_LAST) {
			error = EINVAL;
			break;
		}
		dsize = FUNC1(nvh);
		if (dsize == 0) {
			error = EINVAL;
			break;
		}
		if (size < FUNC3(nvh)) {
			error = EINVAL;
			break;
		}
		vsize = 0;
		switch (nvh->nvh_type & NV_TYPE_MASK) {
		case NV_TYPE_INT8:
		case NV_TYPE_UINT8:
			if (vsize == 0)
				vsize = 1;
			/* FALLTHROUGH */
		case NV_TYPE_INT16:
		case NV_TYPE_UINT16:
			if (vsize == 0)
				vsize = 2;
			/* FALLTHROUGH */
		case NV_TYPE_INT32:
		case NV_TYPE_UINT32:
			if (vsize == 0)
				vsize = 4;
			/* FALLTHROUGH */
		case NV_TYPE_INT64:
		case NV_TYPE_UINT64:
			if (vsize == 0)
				vsize = 8;
			if (dsize != vsize) {
				error = EINVAL;
				break;
			}
			break;
		case NV_TYPE_INT8_ARRAY:
		case NV_TYPE_UINT8_ARRAY:
			break;
		case NV_TYPE_INT16_ARRAY:
		case NV_TYPE_UINT16_ARRAY:
			if (vsize == 0)
				vsize = 2;
			/* FALLTHROUGH */
		case NV_TYPE_INT32_ARRAY:
		case NV_TYPE_UINT32_ARRAY:
			if (vsize == 0)
				vsize = 4;
			/* FALLTHROUGH */
		case NV_TYPE_INT64_ARRAY:
		case NV_TYPE_UINT64_ARRAY:
			if (vsize == 0)
				vsize = 8;
			if ((dsize % vsize) != 0) {
				error = EINVAL;
				break;
			}
			break;
		case NV_TYPE_STRING:
			data = FUNC0(nvh);
			if (data[dsize - 1] != '\0') {
				error = EINVAL;
				break;
			}
			if (FUNC8((char *)data) != dsize - 1) {
				error = EINVAL;
				break;
			}
			break;
		default:
			FUNC5("invalid condition");
		}
		if (error != 0)
			break;
		ptr += FUNC3(nvh);
		size -= FUNC3(nvh);
	}
	if (error != 0) {
		errno = error;
		if (nv->nv_error == 0)
			nv->nv_error = error;
		return (-1);
	}
	if (extrap != NULL)
		*extrap = size;
	return (0);
}