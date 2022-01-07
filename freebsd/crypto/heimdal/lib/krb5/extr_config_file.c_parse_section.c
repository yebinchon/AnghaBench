
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_config_section ;


 int KRB5_CONFIG_BADFORMAT ;
 int * _krb5_config_get_entry (int **,char*,int ) ;
 int krb5_config_list ;
 char* strchr (char*,char) ;

__attribute__((used)) static krb5_error_code
parse_section(char *p, krb5_config_section **s, krb5_config_section **parent,
       const char **err_message)
{
    char *p1;
    krb5_config_section *tmp;

    p1 = strchr (p + 1, ']');
    if (p1 == ((void*)0)) {
 *err_message = "missing ]";
 return KRB5_CONFIG_BADFORMAT;
    }
    *p1 = '\0';
    tmp = _krb5_config_get_entry(parent, p + 1, krb5_config_list);
    if(tmp == ((void*)0)) {
 *err_message = "out of memory";
 return KRB5_CONFIG_BADFORMAT;
    }
    *s = tmp;
    return 0;
}
