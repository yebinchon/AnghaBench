
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct fileptr {int dummy; } ;
typedef int krb5_error_code ;
struct TYPE_6__ {int list; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef TYPE_2__ krb5_config_section ;
typedef int krb5_config_binding ;
typedef int buf ;


 int EINVAL ;
 int KRB5_BUFSIZ ;
 int * config_fgets (char*,int,struct fileptr*) ;
 scalar_t__ isspace (unsigned char) ;
 int parse_binding (struct fileptr*,unsigned int*,char*,int **,int *,char const**) ;
 int parse_section (char*,TYPE_2__**,TYPE_2__**,char const**) ;
 size_t strcspn (char*,char*) ;

__attribute__((used)) static krb5_error_code
krb5_config_parse_debug (struct fileptr *f,
    krb5_config_section **res,
    unsigned *lineno,
    const char **err_message)
{
    krb5_config_section *s = ((void*)0);
    krb5_config_binding *b = ((void*)0);
    char buf[KRB5_BUFSIZ];
    krb5_error_code ret;

    while (config_fgets(buf, sizeof(buf), f) != ((void*)0)) {
 char *p;

 ++*lineno;
 buf[strcspn(buf, "\r\n")] = '\0';
 p = buf;
 while(isspace((unsigned char)*p))
     ++p;
 if (*p == '#' || *p == ';')
     continue;
 if (*p == '[') {
     ret = parse_section(p, &s, res, err_message);
     if (ret)
  return ret;
     b = ((void*)0);
 } else if (*p == '}') {
     *err_message = "unmatched }";
     return EINVAL;
 } else if(*p != '\0') {
     if (s == ((void*)0)) {
  *err_message = "binding before section";
  return EINVAL;
     }
     ret = parse_binding(f, lineno, p, &b, &s->u.list, err_message);
     if (ret)
  return ret;
 }
    }
    return 0;
}
