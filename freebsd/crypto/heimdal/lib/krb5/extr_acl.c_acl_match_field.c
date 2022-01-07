
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * retv; int cstr; } ;
struct acl_field {scalar_t__ type; TYPE_1__ u; } ;
typedef int krb5_context ;
typedef int krb5_boolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ acl_fnmatch ;
 scalar_t__ acl_retval ;
 scalar_t__ acl_string ;
 int fnmatch (int ,char const*,int ) ;
 int strcmp (int ,char const*) ;
 int strdup (char const*) ;

__attribute__((used)) static krb5_boolean
acl_match_field(krb5_context context,
  const char *string,
  struct acl_field *field)
{
    if(field->type == acl_string) {
 return !strcmp(field->u.cstr, string);
    } else if(field->type == acl_fnmatch) {
 return !fnmatch(field->u.cstr, string, 0);
    } else if(field->type == acl_retval) {
 *field->u.retv = strdup(string);
 return TRUE;
    }
    return FALSE;
}
