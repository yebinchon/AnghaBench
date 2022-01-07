
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_boolean ;


 int FALSE ;
 int KF_VERSION_1 ;
 int TRUE ;
 scalar_t__ islower (unsigned char) ;
 int protocol_version ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static krb5_boolean
kfd_match_version(const void *arg, const char *version)
{
    if(strcmp(version, KF_VERSION_1) == 0) {
 protocol_version = 1;
 return TRUE;
    } else if (strlen(version) == 4 &&
        version[0] == '0' &&
        version[1] == '.' &&
        (version[2] == '4' || version[2] == '3') &&
        islower((unsigned char)version[3])) {
 protocol_version = 0;
 return TRUE;
    }
    return FALSE;
}
