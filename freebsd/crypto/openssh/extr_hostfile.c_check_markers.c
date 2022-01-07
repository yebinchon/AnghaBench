
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int marker ;
typedef int HostkeyMarker ;


 int CA_MARKER ;
 int MRK_CA ;
 int MRK_ERROR ;
 int MRK_NONE ;
 int MRK_REVOKE ;
 int REVOKE_MARKER ;
 int memcpy (char*,char*,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static HostkeyMarker
check_markers(char **cpp)
{
 char marker[32], *sp, *cp = *cpp;
 int ret = MRK_NONE;

 while (*cp == '@') {

  if (ret != MRK_NONE)
   return MRK_ERROR;

  if ((sp = strchr(cp, ' ')) == ((void*)0) &&
      (sp = strchr(cp, '\t')) == ((void*)0))
   return MRK_ERROR;

  if (sp <= cp + 1 || sp >= cp + sizeof(marker))
   return MRK_ERROR;
  memcpy(marker, cp, sp - cp);
  marker[sp - cp] = '\0';
  if (strcmp(marker, CA_MARKER) == 0)
   ret = MRK_CA;
  else if (strcmp(marker, REVOKE_MARKER) == 0)
   ret = MRK_REVOKE;
  else
   return MRK_ERROR;


  cp = sp;
  for (; *cp == ' ' || *cp == '\t'; cp++)
   ;
 }
 *cpp = cp;
 return ret;
}
