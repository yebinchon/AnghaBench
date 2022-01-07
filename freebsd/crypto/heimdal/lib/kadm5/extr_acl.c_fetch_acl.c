
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int * krb5_const_principal ;
typedef scalar_t__ krb5_boolean ;
struct TYPE_4__ {int acl_file; } ;
struct TYPE_5__ {int context; int caller; TYPE_1__ config; } ;
typedef TYPE_2__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef int buf ;
typedef int FILE ;


 scalar_t__ _kadm5_string_to_privs (char*,unsigned int*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_parse_name (int ,char*,int *) ;
 int krb5_principal_compare (int ,int ,int ) ;
 scalar_t__ krb5_principal_match (int ,int *,int ) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static kadm5_ret_t
fetch_acl (kadm5_server_context *context,
    krb5_const_principal princ,
    unsigned *ret_flags)
{
    FILE *f;
    krb5_error_code ret = 0;
    char buf[256];

    *ret_flags = 0;


    f = fopen(context->config.acl_file, "r");
    if (f == ((void*)0))
 return 0;

    while(fgets(buf, sizeof(buf), f) != ((void*)0)) {
 char *foo = ((void*)0), *p;
 krb5_principal this_princ;
 unsigned flags = 0;

 p = strtok_r(buf, " \t\n", &foo);
 if(p == ((void*)0))
     continue;
 if (*p == '#')
     continue;
 ret = krb5_parse_name(context->context, p, &this_princ);
 if(ret)
     break;
 if(!krb5_principal_compare(context->context,
       context->caller, this_princ)) {
     krb5_free_principal(context->context, this_princ);
     continue;
 }
 krb5_free_principal(context->context, this_princ);
 p = strtok_r(((void*)0), " \t\n", &foo);
 if(p == ((void*)0))
     continue;
 ret = _kadm5_string_to_privs(p, &flags);
 if (ret)
     break;
 p = strtok_r(((void*)0), " \t\n", &foo);
 if (p == ((void*)0)) {
     *ret_flags = flags;
     break;
 }
 if (princ != ((void*)0)) {
     krb5_principal pattern_princ;
     krb5_boolean match;

     ret = krb5_parse_name (context->context, p, &pattern_princ);
     if (ret)
  break;
     match = krb5_principal_match (context->context,
       princ, pattern_princ);
     krb5_free_principal (context->context, pattern_princ);
     if (match) {
  *ret_flags = flags;
  break;
     }
 }
    }
    fclose(f);
    return ret;
}
