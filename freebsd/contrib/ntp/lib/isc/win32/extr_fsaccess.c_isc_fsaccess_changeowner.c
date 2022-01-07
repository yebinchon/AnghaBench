
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sidBuffer ;
typedef int isc_result_t ;
typedef int groupBuffer ;
typedef int domainBuffer ;
typedef int SID_NAME_USE ;
typedef int SECURITY_DESCRIPTOR ;
typedef int PSID ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ FALSE ;
 int GROUP_SECURITY_INFORMATION ;
 int ISC_R_NOPERM ;
 int ISC_R_SUCCESS ;
 int InitializeSecurityDescriptor (int *,int ) ;
 int LookupAccountName (int ,char const*,int ,int*,char*,int*,int *) ;
 int OWNER_SECURITY_INFORMATION ;
 int SECURITY_DESCRIPTOR_REVISION ;
 int SetFileSecurity (char const*,int,int *) ;
 int SetSecurityDescriptorGroup (int *,int ,scalar_t__) ;
 int SetSecurityDescriptorOwner (int *,int ,scalar_t__) ;
 scalar_t__ is_ntfs (char const*) ;

isc_result_t
isc_fsaccess_changeowner(const char *filename, const char *user) {
 SECURITY_DESCRIPTOR psd;
 BYTE sidBuffer[500];
 BYTE groupBuffer[500];
 PSID psid=(PSID) &sidBuffer;
 DWORD sidBufferSize = sizeof(sidBuffer);
 char domainBuffer[100];
 DWORD domainBufferSize = sizeof(domainBuffer);
 SID_NAME_USE snu;
 PSID pSidGroup = (PSID) &groupBuffer;
 DWORD groupBufferSize = sizeof(groupBuffer);
 if (is_ntfs(filename) == FALSE)
  return (ISC_R_SUCCESS);

 if (!InitializeSecurityDescriptor(&psd, SECURITY_DESCRIPTOR_REVISION))
  return (ISC_R_NOPERM);

 if (!LookupAccountName(0, user, psid, &sidBufferSize, domainBuffer,
  &domainBufferSize, &snu))
  return (ISC_R_NOPERM);


 domainBufferSize = sizeof(domainBuffer);
 if (!LookupAccountName(0, "Administrators", pSidGroup,
  &groupBufferSize, domainBuffer, &domainBufferSize, &snu))
  return (ISC_R_NOPERM);

 if (!SetSecurityDescriptorOwner(&psd, psid, FALSE))
  return (ISC_R_NOPERM);

 if (!SetSecurityDescriptorGroup(&psd, pSidGroup, FALSE))
  return (ISC_R_NOPERM);

 if (!SetFileSecurity(filename,
  OWNER_SECURITY_INFORMATION | GROUP_SECURITY_INFORMATION,
  &psd))
  return (ISC_R_NOPERM);

 return (ISC_R_SUCCESS);
}
