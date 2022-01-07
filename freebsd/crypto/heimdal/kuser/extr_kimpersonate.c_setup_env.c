
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int asn1_TicketFlags_units () ;
 int client_principal ;
 int * client_principal_str ;
 int exit (int) ;
 int int2TicketFlags (int) ;
 scalar_t__ keytab_file ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*) ;
 scalar_t__ krb5_kt_default (int ,int *) ;
 scalar_t__ krb5_kt_resolve (int ,scalar_t__,int *) ;
 scalar_t__ krb5_parse_name (int ,int *,int *) ;
 int krb5_warnx (int ,char*,scalar_t__) ;
 int parse_flags (scalar_t__,int ,int ) ;
 int print_flags_table (int ,int ) ;
 int server_principal ;
 int * server_principal_str ;
 int stderr ;
 int ticket_flags ;
 scalar_t__ ticket_flags_str ;

__attribute__((used)) static void
setup_env (krb5_context context, krb5_keytab *kt)
{
    krb5_error_code ret;

    if (keytab_file)
 ret = krb5_kt_resolve (context, keytab_file, kt);
    else
 ret = krb5_kt_default (context, kt);
    if (ret)
 krb5_err (context, 1, ret, "resolving keytab");

    if (client_principal_str == ((void*)0))
 krb5_errx (context, 1, "missing client principal");
    ret = krb5_parse_name (context, client_principal_str, &client_principal);
    if (ret)
 krb5_err (context, 1, ret, "resolvning client name");

    if (server_principal_str == ((void*)0))
 krb5_errx (context, 1, "missing server principal");
    ret = krb5_parse_name (context, server_principal_str, &server_principal);
    if (ret)
 krb5_err (context, 1, ret, "resolvning client name");

    if (ticket_flags_str) {
 int ticket_flags_int;

 ticket_flags_int = parse_flags(ticket_flags_str,
           asn1_TicketFlags_units(), 0);
 if (ticket_flags_int <= 0) {
     krb5_warnx (context, "bad ticket flags: `%s'", ticket_flags_str);
     print_flags_table (asn1_TicketFlags_units(), stderr);
     exit (1);
 }
 if (ticket_flags_int)
     ticket_flags = int2TicketFlags (ticket_flags_int);
    }
}
