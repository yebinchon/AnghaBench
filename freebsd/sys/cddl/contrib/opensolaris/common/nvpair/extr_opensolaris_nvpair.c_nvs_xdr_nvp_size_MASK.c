#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_5__ {int nvs_op; } ;
typedef  TYPE_1__ nvstream_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int data_type_t ;

/* Variables and functions */
#define  DATA_TYPE_BOOLEAN 154 
#define  DATA_TYPE_BOOLEAN_ARRAY 153 
#define  DATA_TYPE_BOOLEAN_VALUE 152 
#define  DATA_TYPE_BYTE 151 
#define  DATA_TYPE_BYTE_ARRAY 150 
#define  DATA_TYPE_DOUBLE 149 
#define  DATA_TYPE_HRTIME 148 
#define  DATA_TYPE_INT16 147 
#define  DATA_TYPE_INT16_ARRAY 146 
#define  DATA_TYPE_INT32 145 
#define  DATA_TYPE_INT32_ARRAY 144 
#define  DATA_TYPE_INT64 143 
#define  DATA_TYPE_INT64_ARRAY 142 
#define  DATA_TYPE_INT8 141 
#define  DATA_TYPE_INT8_ARRAY 140 
#define  DATA_TYPE_NVLIST 139 
#define  DATA_TYPE_NVLIST_ARRAY 138 
#define  DATA_TYPE_STRING 137 
#define  DATA_TYPE_STRING_ARRAY 136 
#define  DATA_TYPE_UINT16 135 
#define  DATA_TYPE_UINT16_ARRAY 134 
#define  DATA_TYPE_UINT32 133 
#define  DATA_TYPE_UINT32_ARRAY 132 
#define  DATA_TYPE_UINT64 131 
#define  DATA_TYPE_UINT64_ARRAY 130 
#define  DATA_TYPE_UINT8 129 
#define  DATA_TYPE_UINT8_ARRAY 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int INT32_MAX ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int NVS_OP_GETSIZE ; 
 int FUNC5 (int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(nvstream_t *nvs, nvpair_t *nvp, size_t *size)
{
	data_type_t type = FUNC3(nvp);
	/*
	 * encode_size + decode_size + name string size + data type + nelem
	 * where name string size = 4 + NV_ALIGN4(strlen(NVP_NAME(nvp)))
	 */
	uint64_t nvp_sz = 4 + 4 + 4 + FUNC5(FUNC8(FUNC1(nvp))) + 4 + 4;

	switch (type) {
	case DATA_TYPE_BOOLEAN:
		break;

	case DATA_TYPE_BOOLEAN_VALUE:
	case DATA_TYPE_BYTE:
	case DATA_TYPE_INT8:
	case DATA_TYPE_UINT8:
	case DATA_TYPE_INT16:
	case DATA_TYPE_UINT16:
	case DATA_TYPE_INT32:
	case DATA_TYPE_UINT32:
		nvp_sz += 4;	/* 4 is the minimum xdr unit */
		break;

	case DATA_TYPE_INT64:
	case DATA_TYPE_UINT64:
	case DATA_TYPE_HRTIME:
#if !defined(_KERNEL)
	case DATA_TYPE_DOUBLE:
#endif
		nvp_sz += 8;
		break;

	case DATA_TYPE_STRING:
		nvp_sz += 4 + FUNC5(FUNC8((char *)FUNC4(nvp)));
		break;

	case DATA_TYPE_BYTE_ARRAY:
		nvp_sz += FUNC5(FUNC2(nvp));
		break;

	case DATA_TYPE_BOOLEAN_ARRAY:
	case DATA_TYPE_INT8_ARRAY:
	case DATA_TYPE_UINT8_ARRAY:
	case DATA_TYPE_INT16_ARRAY:
	case DATA_TYPE_UINT16_ARRAY:
	case DATA_TYPE_INT32_ARRAY:
	case DATA_TYPE_UINT32_ARRAY:
		nvp_sz += 4 + 4 * (uint64_t)FUNC2(nvp);
		break;

	case DATA_TYPE_INT64_ARRAY:
	case DATA_TYPE_UINT64_ARRAY:
		nvp_sz += 4 + 8 * (uint64_t)FUNC2(nvp);
		break;

	case DATA_TYPE_STRING_ARRAY: {
		int i;
		char **strs = (void *)FUNC4(nvp);

		for (i = 0; i < FUNC2(nvp); i++)
			nvp_sz += 4 + FUNC5(FUNC8(strs[i]));

		break;
	}

	case DATA_TYPE_NVLIST:
	case DATA_TYPE_NVLIST_ARRAY: {
		size_t nvsize = 0;
		int old_nvs_op = nvs->nvs_op;
		int err;

		nvs->nvs_op = NVS_OP_GETSIZE;
		if (type == DATA_TYPE_NVLIST)
			err = FUNC7(nvs, FUNC0(nvp), &nvsize);
		else
			err = FUNC6(nvs, nvp, &nvsize);
		nvs->nvs_op = old_nvs_op;

		if (err != 0)
			return (EINVAL);

		nvp_sz += nvsize;
		break;
	}

	default:
		return (EINVAL);
	}

	if (nvp_sz > INT32_MAX)
		return (EINVAL);

	*size = nvp_sz;

	return (0);
}