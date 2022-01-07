
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int AFSSTR ;
 int ALSTR ;
 int BYESTR ;
 int CCATSTR ;
 int COLORSTR ;
 int DATE ;
 int DLSTR ;
 int DSPMSTR ;
 int DTRSTR ;
 int FILECSTR ;
 int HBSTR ;
 int KANSTR ;
 int LFSTR ;
 int LOCALSTR ;
 int NDSTR ;
 int NGSTR ;
 int NLSSTR ;
 int ORIGIN ;
 int PATCHLEVEL ;
 int REV ;
 int RHSTR ;
 int SMSTR ;
 int SSSTR ;
 int STRMACHTYPE ;
 int STROSTYPE ;
 int STRVENDOR ;
 int STRtcsh ;
 int * STRunknown ;
 int STRversion ;
 int VAR_READWRITE ;
 int VERS ;
 int VISTR ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 int setcopy (int ,int ,int ) ;
 int str2short (char*) ;
 int * tgetenv (int ) ;
 char* xasprintf (char*,int ,int ,int ,...) ;
 int xfree ;

void
fix_version(void)
{
    char *version;
    const Char *machtype = tgetenv(STRMACHTYPE);
    const Char *vendor = tgetenv(STRVENDOR);
    const Char *ostype = tgetenv(STROSTYPE);

    if (vendor == ((void*)0))
 vendor = STRunknown;
    if (machtype == ((void*)0))
 machtype = STRunknown;
    if (ostype == ((void*)0))
 ostype = STRunknown;


    version = xasprintf(
"tcsh %d.%.2d.%.2d (%s) %s (%S-%S-%S) options %s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s",
      REV, VERS, PATCHLEVEL, ORIGIN, DATE, machtype, vendor, ostype,
      "7b", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "",
      "", "", "", "", "");
    cleanup_push(version, xfree);
    setcopy(STRversion, str2short(version), VAR_READWRITE);
    cleanup_until(version);
    version = xasprintf("%d.%.2d.%.2d", REV, VERS, PATCHLEVEL);
    cleanup_push(version, xfree);
    setcopy(STRtcsh, str2short(version), VAR_READWRITE);
    cleanup_until(version);
}
