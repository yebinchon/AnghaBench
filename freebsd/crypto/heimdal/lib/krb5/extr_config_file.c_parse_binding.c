
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct fileptr {int dummy; } ;
typedef int krb5_error_code ;
struct TYPE_7__ {int string; int list; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_2__ krb5_config_binding ;


 int KRB5_CONFIG_BADFORMAT ;
 TYPE_2__* _krb5_config_get_entry (TYPE_2__**,char*,int ) ;
 scalar_t__ isspace (unsigned char) ;
 int krb5_config_list ;
 int krb5_config_string ;
 int parse_list (struct fileptr*,unsigned int*,int *,char const**) ;
 int strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static krb5_error_code
parse_binding(struct fileptr *f, unsigned *lineno, char *p,
       krb5_config_binding **b, krb5_config_binding **parent,
       const char **err_message)
{
    krb5_config_binding *tmp;
    char *p1, *p2;
    krb5_error_code ret = 0;

    p1 = p;
    while (*p && *p != '=' && !isspace((unsigned char)*p))
 ++p;
    if (*p == '\0') {
 *err_message = "missing =";
 return KRB5_CONFIG_BADFORMAT;
    }
    p2 = p;
    while (isspace((unsigned char)*p))
 ++p;
    if (*p != '=') {
 *err_message = "missing =";
 return KRB5_CONFIG_BADFORMAT;
    }
    ++p;
    while(isspace((unsigned char)*p))
 ++p;
    *p2 = '\0';
    if (*p == '{') {
 tmp = _krb5_config_get_entry(parent, p1, krb5_config_list);
 if (tmp == ((void*)0)) {
     *err_message = "out of memory";
     return KRB5_CONFIG_BADFORMAT;
 }
 ret = parse_list (f, lineno, &tmp->u.list, err_message);
    } else {
 tmp = _krb5_config_get_entry(parent, p1, krb5_config_string);
 if (tmp == ((void*)0)) {
     *err_message = "out of memory";
     return KRB5_CONFIG_BADFORMAT;
 }
 p1 = p;
 p = p1 + strlen(p1);
 while(p > p1 && isspace((unsigned char)*(p-1)))
     --p;
 *p = '\0';
 tmp->u.string = strdup(p1);
    }
    *b = tmp;
    return ret;
}
