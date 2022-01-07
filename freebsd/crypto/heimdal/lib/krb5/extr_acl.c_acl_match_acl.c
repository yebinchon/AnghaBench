
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_field {struct acl_field* next; } ;
typedef int krb5_context ;
typedef int krb5_boolean ;
typedef int buf ;


 int FALSE ;
 int TRUE ;
 int acl_match_field (int ,char*,struct acl_field*) ;
 int strsep_copy (char const**,char*,char*,int) ;

__attribute__((used)) static krb5_boolean
acl_match_acl(krb5_context context,
       struct acl_field *acl,
       const char *string)
{
    char buf[256];
    while(strsep_copy(&string, " \t", buf, sizeof(buf)) != -1) {
 if(buf[0] == '\0')
     continue;
 if (acl == ((void*)0))
     return FALSE;
 if(!acl_match_field(context, buf, acl)) {
     return FALSE;
 }
 acl = acl->next;
    }
    if (acl)
 return FALSE;
    return TRUE;
}
