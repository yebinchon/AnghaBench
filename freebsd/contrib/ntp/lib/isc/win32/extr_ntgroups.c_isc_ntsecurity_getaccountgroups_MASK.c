#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_4__ {int /*<<< orphan*/  grui0_name; int /*<<< orphan*/  lgrui0_name; } ;
typedef  scalar_t__ NET_API_STATUS ;
typedef  TYPE_1__* LPLOCALGROUP_USERS_INFO_0 ;
typedef  TYPE_1__* LPGROUP_USERS_INFO_0 ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_MORE_DATA ; 
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_NOPERM ; 
 int /*<<< orphan*/  ISC_R_NOSPACE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 scalar_t__ LG_INCLUDE_INDIRECT ; 
 int MAX_NAME_LENGTH ; 
 scalar_t__ MAX_PREFERRED_LENGTH ; 
 scalar_t__ NERR_Success ; 
 scalar_t__ NERR_UserNotFound ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (char*,int /*<<< orphan*/ ,size_t) ; 

isc_result_t
FUNC10(char *username, char **GroupList,
				unsigned int maxgroups,
				unsigned int *totalGroups) {
	LPGROUP_USERS_INFO_0 pTmpBuf;
	LPLOCALGROUP_USERS_INFO_0 pTmpLBuf;
	DWORD i;
	LPLOCALGROUP_USERS_INFO_0 pBuf = NULL;
	LPGROUP_USERS_INFO_0 pgrpBuf = NULL;
	DWORD dwLevel = 0;
	DWORD dwFlags = LG_INCLUDE_INDIRECT;
	DWORD dwPrefMaxLen = MAX_PREFERRED_LENGTH;
	DWORD dwEntriesRead = 0;
	DWORD dwTotalEntries = 0;
	NET_API_STATUS nStatus;
	DWORD dwTotalCount = 0;
	size_t retlen;
	wchar_t user[MAX_NAME_LENGTH];

	retlen = FUNC6(user, username, MAX_NAME_LENGTH);

	*totalGroups = 0;
	/*
	 * Call the NetUserGetLocalGroups function
	 * specifying information level 0.
	 *
	 * The LG_INCLUDE_INDIRECT flag specifies that the
	 * function should also return the names of the local
	 * groups in which the user is indirectly a member.
	 */
	nStatus = FUNC2(NULL,
				   user,
				   dwLevel,
				   dwFlags,
				   (LPBYTE *) &pBuf,
				   dwPrefMaxLen,
				   &dwEntriesRead,
				   &dwTotalEntries);
	/*
	 * See if the call succeeds,
	 */
	if (nStatus != NERR_Success) {
		if (nStatus == ERROR_ACCESS_DENIED)
			return (ISC_R_NOPERM);
		if (nStatus == ERROR_MORE_DATA)
			return (ISC_R_NOSPACE);
		if (nStatus == NERR_UserNotFound)
			dwEntriesRead = 0;
	}

	dwTotalCount = 0;
	if (pBuf != NULL) {
		pTmpLBuf = pBuf;
		/*
		 * Loop through the entries
		 */
		 for (i = 0;
		     (i < dwEntriesRead && *totalGroups < maxgroups); i++) {
			FUNC3(pTmpLBuf != NULL);
			if (pTmpLBuf == NULL)
				break;
			retlen = FUNC8(pTmpLBuf->lgrui0_name);
			GroupList[*totalGroups] = (char *) FUNC5(retlen +1);
			if (GroupList[*totalGroups] == NULL)
				return (ISC_R_NOMEMORY);

			retlen = FUNC9(GroupList[*totalGroups],
				 pTmpLBuf->lgrui0_name, retlen);
			GroupList[*totalGroups][retlen] = '\0';
			if (FUNC7(GroupList[*totalGroups], "None") == 0)
				FUNC4(GroupList[*totalGroups]);
			else
				(*totalGroups)++;
			pTmpLBuf++;
		}
	}
	/* Free the allocated memory. */
	if (pBuf != NULL)
		FUNC0(pBuf);


	/*
	 * Call the NetUserGetGroups function, specifying level 0.
	 */
	nStatus = FUNC1(NULL,
			      user,
			      dwLevel,
			      (LPBYTE*)&pgrpBuf,
			      dwPrefMaxLen,
			      &dwEntriesRead,
			      &dwTotalEntries);
	/*
	 * See if the call succeeds,
	 */
	if (nStatus != NERR_Success) {
		if (nStatus == ERROR_ACCESS_DENIED)
			return (ISC_R_NOPERM);
		if (nStatus == ERROR_MORE_DATA)
			return (ISC_R_NOSPACE);
		if (nStatus == NERR_UserNotFound)
			dwEntriesRead = 0;
	}

	if (pgrpBuf != NULL) {
		pTmpBuf = pgrpBuf;
		/*
		 * Loop through the entries
		 */
		 for (i = 0;
		     (i < dwEntriesRead && *totalGroups < maxgroups); i++) {
			FUNC3(pTmpBuf != NULL);

			if (pTmpBuf == NULL)
				break;
			retlen = FUNC8(pTmpBuf->grui0_name);
			GroupList[*totalGroups] = (char *) FUNC5(retlen +1);
			if (GroupList[*totalGroups] == NULL)
				return (ISC_R_NOMEMORY);

			retlen = FUNC9(GroupList[*totalGroups],
				 pTmpBuf->grui0_name, retlen);
			GroupList[*totalGroups][retlen] = '\0';
			if (FUNC7(GroupList[*totalGroups], "None") == 0)
				FUNC4(GroupList[*totalGroups]);
			else
				(*totalGroups)++;
			pTmpBuf++;
		}
	}
	/*
	 * Free the allocated memory.
	 */
	if (pgrpBuf != NULL)
		FUNC0(pgrpBuf);

	return (ISC_R_SUCCESS);
}