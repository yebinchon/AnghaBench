
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sidBuffer ;
typedef int otherSidBuffer ;
typedef int isc_result_t ;
typedef scalar_t__ isc_boolean_t ;
typedef int domainBuffer ;
typedef int adminSidBuffer ;
typedef int aclBuffer ;
typedef int SID_NAME_USE ;
typedef int SECURITY_DESCRIPTOR ;
typedef int PSID ;
typedef int PACL ;
typedef int DWORD ;
typedef int BYTE ;


 int ACL_REVISION ;
 int AddAccessAllowedAce (int ,int ,int,int ) ;
 int DACL_SECURITY_INFORMATION ;
 int FALSE ;
 int FILE_ADD_FILE ;
 int FILE_ADD_SUBDIRECTORY ;
 int FILE_ALL_ACCESS ;
 int FILE_DELETE_CHILD ;
 int FILE_GENERIC_EXECUTE ;
 int FILE_GENERIC_READ ;
 int FILE_GENERIC_WRITE ;
 int FILE_LIST_DIRECTORY ;
 int FILE_TRAVERSE ;
 int GetLastError () ;
 int ISC_FSACCESS_ACCESSCHILD ;
 int ISC_FSACCESS_CREATECHILD ;
 int ISC_FSACCESS_DELETECHILD ;
 int ISC_FSACCESS_EXECUTE ;
 int ISC_FSACCESS_LISTDIRECTORY ;
 int ISC_FSACCESS_READ ;
 int ISC_FSACCESS_WRITE ;
 int ISC_R_NOPERM ;
 int ISC_R_SUCCESS ;
 scalar_t__ ISC_TRUE ;
 int InitializeAcl (int ,int,int ) ;
 int InitializeSecurityDescriptor (int *,int ) ;
 int LookupAccountName (int ,char const*,int ,int*,char*,int*,int *) ;
 int SECURITY_DESCRIPTOR_REVISION ;
 int STANDARD_RIGHTS_ALL ;
 int STEP ;
 int SetFileSecurity (char const*,int ,int *) ;
 int SetSecurityDescriptorDacl (int *,scalar_t__,int ,int ) ;
 scalar_t__ TRUE ;

isc_result_t
NTFS_Access_Control(const char *filename, const char *user, int access,
      isc_boolean_t isdir) {
 SECURITY_DESCRIPTOR sd;
 BYTE aclBuffer[1024];
 PACL pacl=(PACL)&aclBuffer;
 BYTE sidBuffer[100];
 PSID psid=(PSID) &sidBuffer;
 DWORD sidBufferSize = sizeof(sidBuffer);
 BYTE adminSidBuffer[100];
 PSID padminsid=(PSID) &adminSidBuffer;
 DWORD adminSidBufferSize = sizeof(adminSidBuffer);
 BYTE otherSidBuffer[100];
 PSID pothersid=(PSID) &otherSidBuffer;
 DWORD otherSidBufferSize = sizeof(otherSidBuffer);
 char domainBuffer[100];
 DWORD domainBufferSize = sizeof(domainBuffer);
 SID_NAME_USE snu;
 int errval;
 DWORD NTFSbits;
 int caccess;



 if (!InitializeSecurityDescriptor(&sd, SECURITY_DESCRIPTOR_REVISION))
  return (ISC_R_NOPERM);
 if (!InitializeAcl(pacl, sizeof(aclBuffer), ACL_REVISION))
  return (ISC_R_NOPERM);
 if (!LookupAccountName(0, user, psid, &sidBufferSize, domainBuffer,
     &domainBufferSize, &snu))
  return (ISC_R_NOPERM);
 domainBufferSize = sizeof(domainBuffer);
 if (!LookupAccountName(0, "Administrators", padminsid,
  &adminSidBufferSize, domainBuffer, &domainBufferSize, &snu)) {
  errval = GetLastError();
  return (ISC_R_NOPERM);
 }
 domainBufferSize = sizeof(domainBuffer);
 if (!LookupAccountName(0, "Everyone", pothersid,
  &otherSidBufferSize, domainBuffer, &domainBufferSize, &snu)) {
  errval = GetLastError();
  return (ISC_R_NOPERM);
 }

 caccess = access;


 NTFSbits = 0;
 if (caccess & ISC_FSACCESS_READ)
  NTFSbits |= FILE_GENERIC_READ;
 if (caccess & ISC_FSACCESS_WRITE)
  NTFSbits |= FILE_GENERIC_WRITE;
 if (caccess & ISC_FSACCESS_EXECUTE)
  NTFSbits |= FILE_GENERIC_EXECUTE;


 if (isdir == ISC_TRUE) {
  if (caccess & ISC_FSACCESS_CREATECHILD)
   NTFSbits |= FILE_ADD_SUBDIRECTORY | FILE_ADD_FILE;
  if (caccess & ISC_FSACCESS_DELETECHILD)
   NTFSbits |= FILE_DELETE_CHILD;
  if (caccess & ISC_FSACCESS_LISTDIRECTORY)
   NTFSbits |= FILE_LIST_DIRECTORY;
  if (caccess & ISC_FSACCESS_ACCESSCHILD)
   NTFSbits |= FILE_TRAVERSE;
 }

 if (NTFSbits == (FILE_GENERIC_READ | FILE_GENERIC_WRITE
       | FILE_GENERIC_EXECUTE))
       NTFSbits |= FILE_ALL_ACCESS;





 NTFSbits |= STANDARD_RIGHTS_ALL;


 if (!AddAccessAllowedAce(pacl, ACL_REVISION, NTFSbits, psid))
  return (ISC_R_NOPERM);
 if (!AddAccessAllowedAce(pacl, ACL_REVISION, NTFSbits, padminsid))
  return (ISC_R_NOPERM);






 caccess = caccess >> STEP;





 caccess = caccess >> STEP;

 NTFSbits = 0;
 if (caccess & ISC_FSACCESS_READ)
  NTFSbits |= FILE_GENERIC_READ;
 if (caccess & ISC_FSACCESS_WRITE)
  NTFSbits |= FILE_GENERIC_WRITE;
 if (caccess & ISC_FSACCESS_EXECUTE)
  NTFSbits |= FILE_GENERIC_EXECUTE;


 if (isdir == TRUE) {
  if (caccess & ISC_FSACCESS_CREATECHILD)
   NTFSbits |= FILE_ADD_SUBDIRECTORY | FILE_ADD_FILE;
  if (caccess & ISC_FSACCESS_DELETECHILD)
   NTFSbits |= FILE_DELETE_CHILD;
  if (caccess & ISC_FSACCESS_LISTDIRECTORY)
   NTFSbits |= FILE_LIST_DIRECTORY;
  if (caccess & ISC_FSACCESS_ACCESSCHILD)
   NTFSbits |= FILE_TRAVERSE;
 }

 if (!AddAccessAllowedAce(pacl, ACL_REVISION, NTFSbits,
     pothersid))
  return (ISC_R_NOPERM);

 if (!SetSecurityDescriptorDacl(&sd, TRUE, pacl, FALSE))
  return (ISC_R_NOPERM);
 if (!SetFileSecurity(filename, DACL_SECURITY_INFORMATION, &sd)) {
  return (ISC_R_NOPERM);
 }

 return(ISC_R_SUCCESS);
}
