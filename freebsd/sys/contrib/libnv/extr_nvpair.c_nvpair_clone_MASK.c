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
typedef  int /*<<< orphan*/  nvpair_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
#define  NV_TYPE_BINARY 139 
#define  NV_TYPE_BOOL 138 
#define  NV_TYPE_BOOL_ARRAY 137 
#define  NV_TYPE_DESCRIPTOR 136 
#define  NV_TYPE_DESCRIPTOR_ARRAY 135 
#define  NV_TYPE_NULL 134 
#define  NV_TYPE_NUMBER 133 
#define  NV_TYPE_NUMBER_ARRAY 132 
#define  NV_TYPE_NVLIST 131 
#define  NV_TYPE_NVLIST_ARRAY 130 
#define  NV_TYPE_STRING 129 
#define  NV_TYPE_STRING_ARRAY 128 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC12 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (char const*,void const*,size_t) ; 
 void* FUNC14 (int /*<<< orphan*/  const*,size_t*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*) ; 
 void* FUNC16 (int /*<<< orphan*/  const*,size_t*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const*) ; 
 void* FUNC18 (int /*<<< orphan*/  const*,size_t*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const*) ; 
 void* FUNC20 (int /*<<< orphan*/  const*,size_t*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/  const*) ; 
 void* FUNC22 (int /*<<< orphan*/  const*,size_t*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/  const*) ; 
 void* FUNC24 (int /*<<< orphan*/  const*,size_t*) ; 
 char* FUNC25 (int /*<<< orphan*/  const*) ; 
 int FUNC26 (int /*<<< orphan*/  const*) ; 

nvpair_t *
FUNC27(const nvpair_t *nvp)
{
	nvpair_t *newnvp;
	const char *name;
	const void *data;
	size_t datasize;

	FUNC0(nvp);

	name = FUNC25(nvp);

	switch (FUNC26(nvp)) {
	case NV_TYPE_NULL:
		newnvp = FUNC7(name);
		break;
	case NV_TYPE_BOOL:
		newnvp = FUNC3(name, FUNC15(nvp));
		break;
	case NV_TYPE_NUMBER:
		newnvp = FUNC8(name, FUNC19(nvp));
		break;
	case NV_TYPE_STRING:
		newnvp = FUNC12(name, FUNC23(nvp));
		break;
	case NV_TYPE_NVLIST:
		newnvp = FUNC10(name, FUNC21(nvp));
		break;
	case NV_TYPE_BINARY:
		data = FUNC14(nvp, &datasize);
		newnvp = FUNC2(name, data, datasize);
		break;
	case NV_TYPE_BOOL_ARRAY:
		data = FUNC16(nvp, &datasize);
		newnvp = FUNC4(name, data, datasize);
		break;
	case NV_TYPE_NUMBER_ARRAY:
		data = FUNC20(nvp, &datasize);
		newnvp = FUNC9(name, data, datasize);
		break;
	case NV_TYPE_STRING_ARRAY:
		data = FUNC24(nvp, &datasize);
		newnvp = FUNC13(name, data, datasize);
		break;
	case NV_TYPE_NVLIST_ARRAY:
		data = FUNC22(nvp, &datasize);
		newnvp = FUNC11(name, data, datasize);
		break;
#ifndef _KERNEL
	case NV_TYPE_DESCRIPTOR:
		newnvp = FUNC5(name,
		    FUNC17(nvp));
		break;
	case NV_TYPE_DESCRIPTOR_ARRAY:
		data = FUNC18(nvp, &datasize);
		newnvp = FUNC6(name, data, datasize);
		break;
#endif
	default:
		FUNC1("Unknown type: %d.", FUNC26(nvp));
	}

	return (newnvp);
}