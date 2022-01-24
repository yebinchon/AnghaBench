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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct nvhdr {int nvh_type; char* nvh_name; } ;
struct nv {scalar_t__ nv_error; int /*<<< orphan*/  nv_ebuf; } ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 unsigned char* FUNC0 (struct nvhdr*) ; 
 size_t FUNC1 (struct nvhdr*) ; 
 size_t FUNC2 (struct nvhdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nv*) ; 
 int NV_ORDER_MASK ; 
 int NV_ORDER_NETWORK ; 
#define  NV_TYPE_INT16 144 
#define  NV_TYPE_INT16_ARRAY 143 
#define  NV_TYPE_INT32 142 
#define  NV_TYPE_INT32_ARRAY 141 
#define  NV_TYPE_INT64 140 
#define  NV_TYPE_INT64_ARRAY 139 
#define  NV_TYPE_INT8 138 
#define  NV_TYPE_INT8_ARRAY 137 
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
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ ,size_t*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct nv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

void
FUNC12(struct nv *nv)
{
	struct nvhdr *nvh;
	unsigned char *data, *ptr;
	size_t dsize, size;
	unsigned int ii;
	bool swap;

	if (FUNC10(nv, NULL) == -1) {
		FUNC11("error: %d\n", errno);
		return;
	}

	FUNC3(nv);
	FUNC5(nv->nv_error == 0);

	ptr = FUNC6(nv->nv_ebuf, &size);
	while (size > 0) {
		FUNC5(size >= sizeof(*nvh) + 2);
		nvh = (struct nvhdr *)ptr;
		FUNC5(size >= FUNC2(nvh));
		swap = ((nvh->nvh_type & NV_ORDER_MASK) == NV_ORDER_NETWORK);
		dsize = FUNC1(nvh);
		data = FUNC0(nvh);
		FUNC11("  %s", nvh->nvh_name);
		switch (nvh->nvh_type & NV_TYPE_MASK) {
		case NV_TYPE_INT8:
			FUNC11("(int8): %jd", (intmax_t)(*(int8_t *)data));
			break;
		case NV_TYPE_UINT8:
			FUNC11("(uint8): %ju", (uintmax_t)(*(uint8_t *)data));
			break;
		case NV_TYPE_INT16:
			FUNC11("(int16): %jd", swap ?
			    (intmax_t)FUNC7(*(int16_t *)(void *)data) :
			    (intmax_t)*(int16_t *)(void *)data);
			break;
		case NV_TYPE_UINT16:
			FUNC11("(uint16): %ju", swap ?
			    (uintmax_t)FUNC7(*(uint16_t *)(void *)data) :
			    (uintmax_t)*(uint16_t *)(void *)data);
			break;
		case NV_TYPE_INT32:
			FUNC11("(int32): %jd", swap ?
			    (intmax_t)FUNC8(*(int32_t *)(void *)data) :
			    (intmax_t)*(int32_t *)(void *)data);
			break;
		case NV_TYPE_UINT32:
			FUNC11("(uint32): %ju", swap ?
			    (uintmax_t)FUNC8(*(uint32_t *)(void *)data) :
			    (uintmax_t)*(uint32_t *)(void *)data);
			break;
		case NV_TYPE_INT64:
			FUNC11("(int64): %jd", swap ?
			    (intmax_t)FUNC9(*(int64_t *)(void *)data) :
			    (intmax_t)*(int64_t *)(void *)data);
			break;
		case NV_TYPE_UINT64:
			FUNC11("(uint64): %ju", swap ?
			    (uintmax_t)FUNC9(*(uint64_t *)(void *)data) :
			    (uintmax_t)*(uint64_t *)(void *)data);
			break;
		case NV_TYPE_INT8_ARRAY:
			FUNC11("(int8 array):");
			for (ii = 0; ii < dsize; ii++)
				FUNC11(" %jd", (intmax_t)((int8_t *)data)[ii]);
			break;
		case NV_TYPE_UINT8_ARRAY:
			FUNC11("(uint8 array):");
			for (ii = 0; ii < dsize; ii++)
				FUNC11(" %ju", (uintmax_t)((uint8_t *)data)[ii]);
			break;
		case NV_TYPE_INT16_ARRAY:
			FUNC11("(int16 array):");
			for (ii = 0; ii < dsize / 2; ii++) {
				FUNC11(" %jd", swap ?
				    (intmax_t)FUNC7(((int16_t *)(void *)data)[ii]) :
				    (intmax_t)((int16_t *)(void *)data)[ii]);
			}
			break;
		case NV_TYPE_UINT16_ARRAY:
			FUNC11("(uint16 array):");
			for (ii = 0; ii < dsize / 2; ii++) {
				FUNC11(" %ju", swap ?
				    (uintmax_t)FUNC7(((uint16_t *)(void *)data)[ii]) :
				    (uintmax_t)((uint16_t *)(void *)data)[ii]);
			}
			break;
		case NV_TYPE_INT32_ARRAY:
			FUNC11("(int32 array):");
			for (ii = 0; ii < dsize / 4; ii++) {
				FUNC11(" %jd", swap ?
				    (intmax_t)FUNC8(((int32_t *)(void *)data)[ii]) :
				    (intmax_t)((int32_t *)(void *)data)[ii]);
			}
			break;
		case NV_TYPE_UINT32_ARRAY:
			FUNC11("(uint32 array):");
			for (ii = 0; ii < dsize / 4; ii++) {
				FUNC11(" %ju", swap ?
				    (uintmax_t)FUNC8(((uint32_t *)(void *)data)[ii]) :
				    (uintmax_t)((uint32_t *)(void *)data)[ii]);
			}
			break;
		case NV_TYPE_INT64_ARRAY:
			FUNC11("(int64 array):");
			for (ii = 0; ii < dsize / 8; ii++) {
				FUNC11(" %ju", swap ?
				    (uintmax_t)FUNC9(((uint64_t *)(void *)data)[ii]) :
				    (uintmax_t)((uint64_t *)(void *)data)[ii]);
			}
			break;
		case NV_TYPE_UINT64_ARRAY:
			FUNC11("(uint64 array):");
			for (ii = 0; ii < dsize / 8; ii++) {
				FUNC11(" %ju", swap ?
				    (uintmax_t)FUNC9(((uint64_t *)(void *)data)[ii]) :
				    (uintmax_t)((uint64_t *)(void *)data)[ii]);
			}
			break;
		case NV_TYPE_STRING:
			FUNC11("(string): %s", (char *)data);
			break;
		default:
			FUNC4("invalid condition");
		}
		FUNC11("\n");
		ptr += FUNC2(nvh);
		size -= FUNC2(nvh);
	}
}