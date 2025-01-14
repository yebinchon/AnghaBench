
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int rtbl_t ;
typedef scalar_t__ krb5_timestamp ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_7__ {scalar_t__ hw_authent; scalar_t__ pre_authent; scalar_t__ invalid; scalar_t__ initial; scalar_t__ renewable; scalar_t__ postdated; scalar_t__ may_postdate; scalar_t__ proxy; scalar_t__ proxiable; scalar_t__ forwarded; scalar_t__ forwardable; } ;
struct TYPE_8__ {TYPE_2__ b; } ;
struct TYPE_6__ {scalar_t__ starttime; scalar_t__ authtime; scalar_t__ endtime; } ;
struct TYPE_9__ {TYPE_3__ flags; int server; TYPE_1__ times; } ;
typedef TYPE_4__ krb5_creds ;
typedef int krb5_context ;


 int COL_EXPIRES ;
 int COL_FLAGS ;
 int COL_ISSUED ;
 int COL_PRINCIPAL ;
 char* N_ (char*,char*) ;
 int free (char*) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_timeofday (int ,scalar_t__*) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 char* printable_time (scalar_t__) ;
 int rtbl_add_column_entry (int ,int ,char*) ;

__attribute__((used)) static void
print_cred(krb5_context context, krb5_creds *cred, rtbl_t ct, int do_flags)
{
    char *str;
    krb5_error_code ret;
    krb5_timestamp sec;

    krb5_timeofday (context, &sec);


    if(cred->times.starttime)
 rtbl_add_column_entry(ct, COL_ISSUED,
         printable_time(cred->times.starttime));
    else
 rtbl_add_column_entry(ct, COL_ISSUED,
         printable_time(cred->times.authtime));

    if(cred->times.endtime > sec)
 rtbl_add_column_entry(ct, COL_EXPIRES,
         printable_time(cred->times.endtime));
    else
 rtbl_add_column_entry(ct, COL_EXPIRES, N_(">>>Expired<<<", ""));
    ret = krb5_unparse_name (context, cred->server, &str);
    if (ret)
 krb5_err(context, 1, ret, "krb5_unparse_name");
    rtbl_add_column_entry(ct, COL_PRINCIPAL, str);
    if(do_flags) {
 char s[16], *sp = s;
 if(cred->flags.b.forwardable)
     *sp++ = 'F';
 if(cred->flags.b.forwarded)
     *sp++ = 'f';
 if(cred->flags.b.proxiable)
     *sp++ = 'P';
 if(cred->flags.b.proxy)
     *sp++ = 'p';
 if(cred->flags.b.may_postdate)
     *sp++ = 'D';
 if(cred->flags.b.postdated)
     *sp++ = 'd';
 if(cred->flags.b.renewable)
     *sp++ = 'R';
 if(cred->flags.b.initial)
     *sp++ = 'I';
 if(cred->flags.b.invalid)
     *sp++ = 'i';
 if(cred->flags.b.pre_authent)
     *sp++ = 'A';
 if(cred->flags.b.hw_authent)
     *sp++ = 'H';
 *sp = '\0';
 rtbl_add_column_entry(ct, COL_FLAGS, s);
    }
    free(str);
}
