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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const* const,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,void**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int* FUNC9 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int* FUNC11 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC15 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 char** FUNC17 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

void
FUNC21(const nvlist_t *nvl, int fd)
{
	const nvlist_t *tmpnvl;
	nvpair_t *nvp, *tmpnvp;
	void *cookie;
	int level;

	level = 0;
	if (FUNC2(nvl, fd, level))
		return;

	nvp = FUNC3(nvl);
	while (nvp != NULL) {
		FUNC1(fd, "%*s%s (%s):", level * 4, "", FUNC18(nvp),
		    FUNC20(FUNC19(nvp)));
		switch (FUNC19(nvp)) {
		case NV_TYPE_NULL:
			FUNC1(fd, " null\n");
			break;
		case NV_TYPE_BOOL:
			FUNC1(fd, " %s\n", FUNC8(nvp) ?
			    "TRUE" : "FALSE");
			break;
		case NV_TYPE_NUMBER:
			FUNC1(fd, " %ju (%jd) (0x%jx)\n",
			    (uintmax_t)FUNC12(nvp),
			    (intmax_t)FUNC12(nvp),
			    (uintmax_t)FUNC12(nvp));
			break;
		case NV_TYPE_STRING:
			FUNC1(fd, " [%s]\n", FUNC16(nvp));
			break;
		case NV_TYPE_NVLIST:
			FUNC1(fd, "\n");
			tmpnvl = FUNC14(nvp);
			if (FUNC2(tmpnvl, fd, level + 1))
				break;
			tmpnvp = FUNC3(tmpnvl);
			if (tmpnvp != NULL) {
				nvl = tmpnvl;
				nvp = tmpnvp;
				level++;
				continue;
			}
			break;
		case NV_TYPE_DESCRIPTOR:
			FUNC1(fd, " %d\n", FUNC10(nvp));
			break;
		case NV_TYPE_BINARY:
		    {
			const unsigned char *binary;
			unsigned int ii;
			size_t size;

			binary = FUNC7(nvp, &size);
			FUNC1(fd, " %zu ", size);
			for (ii = 0; ii < size; ii++)
				FUNC1(fd, "%02hhx", binary[ii]);
			FUNC1(fd, "\n");
			break;
		    }
		case NV_TYPE_BOOL_ARRAY:
		    {
			const bool *value;
			unsigned int ii;
			size_t nitems;

			value = FUNC9(nvp, &nitems);
			FUNC1(fd, " [ ");
			for (ii = 0; ii < nitems; ii++) {
				FUNC1(fd, "%s", value[ii] ? "TRUE" : "FALSE");
				if (ii != nitems - 1)
					FUNC1(fd, ", ");
			}
			FUNC1(fd, " ]\n");
			break;
		    }
		case NV_TYPE_STRING_ARRAY:
		    {
			const char * const *value;
			unsigned int ii;
			size_t nitems;

			value = FUNC17(nvp, &nitems);
			FUNC1(fd, " [ ");
			for (ii = 0; ii < nitems; ii++) {
				if (value[ii] == NULL)
					FUNC1(fd, "NULL");
				else
					FUNC1(fd, "\"%s\"", value[ii]);
				if (ii != nitems - 1)
					FUNC1(fd, ", ");
			}
			FUNC1(fd, " ]\n");
			break;
		    }
		case NV_TYPE_NUMBER_ARRAY:
		    {
			const uint64_t *value;
			unsigned int ii;
			size_t nitems;

			value = FUNC13(nvp, &nitems);
			FUNC1(fd, " [ ");
			for (ii = 0; ii < nitems; ii++) {
				FUNC1(fd, "%ju (%jd) (0x%jx)",
				    value[ii], value[ii], value[ii]);
				if (ii != nitems - 1)
					FUNC1(fd, ", ");
			}
			FUNC1(fd, " ]\n");
			break;
		    }
		case NV_TYPE_DESCRIPTOR_ARRAY:
		    {
			const int *value;
			unsigned int ii;
			size_t nitems;

			value = FUNC11(nvp, &nitems);
			FUNC1(fd, " [ ");
			for (ii = 0; ii < nitems; ii++) {
				FUNC1(fd, "%d", value[ii]);
				if (ii != nitems - 1)
					FUNC1(fd, ", ");
			}
			FUNC1(fd, " ]\n");
			break;
		    }
		case NV_TYPE_NVLIST_ARRAY:
		    {
			const nvlist_t * const *value;
			unsigned int ii;
			size_t nitems;

			value = FUNC15(nvp, &nitems);
			FUNC1(fd, " %zu\n", nitems);
			tmpnvl = NULL;
			tmpnvp = NULL;
			for (ii = 0; ii < nitems; ii++) {
				if (FUNC2(value[ii], fd,
				    level + 1)) {
					break;
				}

				if (tmpnvl == NULL) {
					tmpnvp = FUNC3(value[ii]);
					if (tmpnvp != NULL) {
						tmpnvl = value[ii];
					} else {
						FUNC1(fd, "%*s,\n",
						    (level + 1) * 4, "");
					}
				}
			}
			if (tmpnvp != NULL) {
				nvl = tmpnvl;
				nvp = tmpnvp;
				level++;
				continue;
			}
			break;
		    }
		default:
			FUNC0("Unknown type: %d.", FUNC19(nvp));
		}

		while ((nvp = FUNC6(nvl, nvp)) == NULL) {
			do {
				cookie = NULL;
				if (FUNC5(nvl))
					FUNC1(fd, "%*s,\n", level * 4, "");
				nvl = FUNC4(nvl, &cookie);
				if (nvl == NULL)
					return;
				if (FUNC5(nvl) && cookie == NULL) {
					nvp = FUNC3(nvl);
				} else {
					nvp = cookie;
					level--;
				}
			} while (nvp == NULL);
			if (FUNC5(nvl) && cookie == NULL)
				break;
		}
	}
}