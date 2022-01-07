
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;
typedef int FSType ;
typedef int BOOL ;


 int FALSE ;
 int GetVolumeInformation (char*,int *,int ,int *,int ,int *,char*,int) ;
 scalar_t__ ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int TRUE ;
 scalar_t__ isalpha (char) ;
 scalar_t__ isc_file_absolutepath (char const*,char*,int) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strncpy (char*,char*,int) ;
 char* strtok (char*,char*) ;

BOOL
is_ntfs(const char * file) {

 char drive[255];
 char FSType[20];
 char tmpbuf[256];
 char *machinename;
 char *sharename;
 char filename[1024];

 REQUIRE(filename != ((void*)0));

 if (isc_file_absolutepath(file, filename,
  sizeof(filename)) != ISC_R_SUCCESS) {
  return (FALSE);
 }





 if (isalpha(filename[0]) && filename[1] == ':' &&
  (filename[2] == '\\' || filename[2] == '/')) {
  strncpy(drive, filename, 3);
  drive[3] = '\0';
 }

 else if ((filename[0] == '\\') && (filename[1] == '\\')) {

  strcpy(tmpbuf, filename);
  machinename = strtok(tmpbuf, "\\");
  sharename = strtok(((void*)0), "\\");
  strcpy(drive, "\\\\");
  strcat(drive, machinename);
  strcat(drive, "\\");
  strcat(drive, sharename);
  strcat(drive, "\\");

 }
 else
  return (FALSE);

 GetVolumeInformation(drive, ((void*)0), 0, ((void*)0), 0, ((void*)0), FSType,
        sizeof(FSType));
 if(strcmp(FSType,"NTFS") == 0)
  return (TRUE);
 else
  return (FALSE);
}
