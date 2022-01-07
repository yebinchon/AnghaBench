
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * data; scalar_t__ length; } ;
struct TYPE_7__ {TYPE_1__ saltvalue; int salttype; } ;
typedef TYPE_2__ krb5_salt ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef scalar_t__ krb5_enctype ;
typedef int krb5_context ;
typedef int buf ;


 scalar_t__ ETYPE_DES_CBC_CRC ;
 scalar_t__ ETYPE_DES_CBC_MD4 ;
 scalar_t__ ETYPE_DES_CBC_MD5 ;
 int KRB5_AFS3_SALT ;
 int KRB5_PW_SALT ;
 scalar_t__ UI_UTIL_read_pw_string (char*,int,char*,int ) ;
 scalar_t__ afs ;
 int args ;
 int * cell ;
 void* estrdup (char*) ;
 int * fgets (char*,int,int ) ;
 scalar_t__ help ;
 int keytype_str ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_free_salt (int ,TYPE_2__) ;
 int krb5_get_pw_salt (int ,int ,TYPE_2__*) ;
 int krb5_parse_name (int ,int *,int *) ;
 int krb5_program_setup (int *,int,char**,int ,int ,int *) ;
 scalar_t__ krb5_string_to_enctype (int ,int ,scalar_t__*) ;
 int num_args ;
 char* password ;
 int * principal ;
 int print_version (int *) ;
 int printf (char*) ;
 int stdin ;
 size_t strcspn (char*,char*) ;
 scalar_t__ strlen (int *) ;
 int tokey (int ,scalar_t__,char*,TYPE_2__,char*) ;
 int usage (int) ;
 scalar_t__ version ;
 scalar_t__ version4 ;
 int version5 ;

int
main(int argc, char **argv)
{
    krb5_context context;
    krb5_principal princ;
    krb5_salt salt;
    int optidx;
    char buf[1024];
    krb5_enctype etype;
    krb5_error_code ret;

    optidx = krb5_program_setup(&context, argc, argv, args, num_args, ((void*)0));

    if(help)
 usage(0);

    if(version){
 print_version (((void*)0));
 return 0;
    }

    argc -= optidx;
    argv += optidx;

    if (argc > 1)
 usage(1);

    if(!version5 && !version4 && !afs)
 version5 = 1;

    ret = krb5_string_to_enctype(context, keytype_str, &etype);
    if(ret)
 krb5_err(context, 1, ret, "krb5_string_to_enctype");

    if((etype != ETYPE_DES_CBC_CRC &&
 etype != ETYPE_DES_CBC_MD4 &&
 etype != ETYPE_DES_CBC_MD5) &&
       (afs || version4)) {
 if(!version5) {
     etype = ETYPE_DES_CBC_CRC;
 } else {
     krb5_errx(context, 1,
        "DES is the only valid keytype for AFS and Kerberos 4");
 }
    }

    if(version5 && principal == ((void*)0)){
 printf("Kerberos v5 principal: ");
 if(fgets(buf, sizeof(buf), stdin) == ((void*)0))
     return 1;
 buf[strcspn(buf, "\r\n")] = '\0';
 principal = estrdup(buf);
    }
    if(afs && cell == ((void*)0)){
 printf("AFS cell: ");
 if(fgets(buf, sizeof(buf), stdin) == ((void*)0))
     return 1;
 buf[strcspn(buf, "\r\n")] = '\0';
 cell = estrdup(buf);
    }
    if(argv[0])
 password = argv[0];
    if(password == ((void*)0)){
 if(UI_UTIL_read_pw_string(buf, sizeof(buf), "Password: ", 0))
     return 1;
 password = buf;
    }

    if(version5){
 krb5_parse_name(context, principal, &princ);
 krb5_get_pw_salt(context, princ, &salt);
 tokey(context, etype, password, salt, "Kerberos 5 (%s)");
 krb5_free_salt(context, salt);
    }
    if(version4){
 salt.salttype = KRB5_PW_SALT;
 salt.saltvalue.length = 0;
 salt.saltvalue.data = ((void*)0);
 tokey(context, ETYPE_DES_CBC_MD5, password, salt, "Kerberos 4");
    }
    if(afs){
 salt.salttype = KRB5_AFS3_SALT;
 salt.saltvalue.length = strlen(cell);
 salt.saltvalue.data = cell;
 tokey(context, ETYPE_DES_CBC_MD5, password, salt, "AFS");
    }
    return 0;
}
