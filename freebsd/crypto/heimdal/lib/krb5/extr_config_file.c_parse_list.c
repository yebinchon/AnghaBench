
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileptr {int dummy; } ;
typedef int krb5_error_code ;
typedef int krb5_config_binding ;
typedef int buf ;


 int KRB5_BUFSIZ ;
 int KRB5_CONFIG_BADFORMAT ;
 int * config_fgets (char*,int,struct fileptr*) ;
 scalar_t__ isspace (unsigned char) ;
 int parse_binding (struct fileptr*,unsigned int*,char*,int **,int **,char const**) ;
 size_t strcspn (char*,char*) ;

__attribute__((used)) static krb5_error_code
parse_list(struct fileptr *f, unsigned *lineno, krb5_config_binding **parent,
    const char **err_message)
{
    char buf[KRB5_BUFSIZ];
    krb5_error_code ret;
    krb5_config_binding *b = ((void*)0);
    unsigned beg_lineno = *lineno;

    while(config_fgets(buf, sizeof(buf), f) != ((void*)0)) {
 char *p;

 ++*lineno;
 buf[strcspn(buf, "\r\n")] = '\0';
 p = buf;
 while(isspace((unsigned char)*p))
     ++p;
 if (*p == '#' || *p == ';' || *p == '\0')
     continue;
 while(isspace((unsigned char)*p))
     ++p;
 if (*p == '}')
     return 0;
 if (*p == '\0')
     continue;
 ret = parse_binding (f, lineno, p, &b, parent, err_message);
 if (ret)
     return ret;
    }
    *lineno = beg_lineno;
    *err_message = "unclosed {";
    return KRB5_CONFIG_BADFORMAT;
}
