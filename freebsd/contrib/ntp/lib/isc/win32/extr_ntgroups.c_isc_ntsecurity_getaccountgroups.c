
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int isc_result_t ;
struct TYPE_4__ {int grui0_name; int lgrui0_name; } ;
typedef scalar_t__ NET_API_STATUS ;
typedef TYPE_1__* LPLOCALGROUP_USERS_INFO_0 ;
typedef TYPE_1__* LPGROUP_USERS_INFO_0 ;
typedef int LPBYTE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_MORE_DATA ;
 int ISC_R_NOMEMORY ;
 int ISC_R_NOPERM ;
 int ISC_R_NOSPACE ;
 int ISC_R_SUCCESS ;
 scalar_t__ LG_INCLUDE_INDIRECT ;
 int MAX_NAME_LENGTH ;
 scalar_t__ MAX_PREFERRED_LENGTH ;
 scalar_t__ NERR_Success ;
 scalar_t__ NERR_UserNotFound ;
 int NetApiBufferFree (TYPE_1__*) ;
 scalar_t__ NetUserGetGroups (int *,int *,scalar_t__,int *,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ NetUserGetLocalGroups (int *,int *,scalar_t__,scalar_t__,int *,scalar_t__,scalar_t__*,scalar_t__*) ;
 int assert (int ) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 size_t mbstowcs (int *,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t wcslen (int ) ;
 size_t wcstombs (char*,int ,size_t) ;

isc_result_t
isc_ntsecurity_getaccountgroups(char *username, char **GroupList,
    unsigned int maxgroups,
    unsigned int *totalGroups) {
 LPGROUP_USERS_INFO_0 pTmpBuf;
 LPLOCALGROUP_USERS_INFO_0 pTmpLBuf;
 DWORD i;
 LPLOCALGROUP_USERS_INFO_0 pBuf = ((void*)0);
 LPGROUP_USERS_INFO_0 pgrpBuf = ((void*)0);
 DWORD dwLevel = 0;
 DWORD dwFlags = LG_INCLUDE_INDIRECT;
 DWORD dwPrefMaxLen = MAX_PREFERRED_LENGTH;
 DWORD dwEntriesRead = 0;
 DWORD dwTotalEntries = 0;
 NET_API_STATUS nStatus;
 DWORD dwTotalCount = 0;
 size_t retlen;
 wchar_t user[MAX_NAME_LENGTH];

 retlen = mbstowcs(user, username, MAX_NAME_LENGTH);

 *totalGroups = 0;
 nStatus = NetUserGetLocalGroups(((void*)0),
       user,
       dwLevel,
       dwFlags,
       (LPBYTE *) &pBuf,
       dwPrefMaxLen,
       &dwEntriesRead,
       &dwTotalEntries);



 if (nStatus != NERR_Success) {
  if (nStatus == ERROR_ACCESS_DENIED)
   return (ISC_R_NOPERM);
  if (nStatus == ERROR_MORE_DATA)
   return (ISC_R_NOSPACE);
  if (nStatus == NERR_UserNotFound)
   dwEntriesRead = 0;
 }

 dwTotalCount = 0;
 if (pBuf != ((void*)0)) {
  pTmpLBuf = pBuf;



   for (i = 0;
       (i < dwEntriesRead && *totalGroups < maxgroups); i++) {
   assert(pTmpLBuf != ((void*)0));
   if (pTmpLBuf == ((void*)0))
    break;
   retlen = wcslen(pTmpLBuf->lgrui0_name);
   GroupList[*totalGroups] = (char *) malloc(retlen +1);
   if (GroupList[*totalGroups] == ((void*)0))
    return (ISC_R_NOMEMORY);

   retlen = wcstombs(GroupList[*totalGroups],
     pTmpLBuf->lgrui0_name, retlen);
   GroupList[*totalGroups][retlen] = '\0';
   if (strcmp(GroupList[*totalGroups], "None") == 0)
    free(GroupList[*totalGroups]);
   else
    (*totalGroups)++;
   pTmpLBuf++;
  }
 }

 if (pBuf != ((void*)0))
  NetApiBufferFree(pBuf);





 nStatus = NetUserGetGroups(((void*)0),
         user,
         dwLevel,
         (LPBYTE*)&pgrpBuf,
         dwPrefMaxLen,
         &dwEntriesRead,
         &dwTotalEntries);



 if (nStatus != NERR_Success) {
  if (nStatus == ERROR_ACCESS_DENIED)
   return (ISC_R_NOPERM);
  if (nStatus == ERROR_MORE_DATA)
   return (ISC_R_NOSPACE);
  if (nStatus == NERR_UserNotFound)
   dwEntriesRead = 0;
 }

 if (pgrpBuf != ((void*)0)) {
  pTmpBuf = pgrpBuf;



   for (i = 0;
       (i < dwEntriesRead && *totalGroups < maxgroups); i++) {
   assert(pTmpBuf != ((void*)0));

   if (pTmpBuf == ((void*)0))
    break;
   retlen = wcslen(pTmpBuf->grui0_name);
   GroupList[*totalGroups] = (char *) malloc(retlen +1);
   if (GroupList[*totalGroups] == ((void*)0))
    return (ISC_R_NOMEMORY);

   retlen = wcstombs(GroupList[*totalGroups],
     pTmpBuf->grui0_name, retlen);
   GroupList[*totalGroups][retlen] = '\0';
   if (strcmp(GroupList[*totalGroups], "None") == 0)
    free(GroupList[*totalGroups]);
   else
    (*totalGroups)++;
   pTmpBuf++;
  }
 }



 if (pgrpBuf != ((void*)0))
  NetApiBufferFree(pgrpBuf);

 return (ISC_R_SUCCESS);
}
