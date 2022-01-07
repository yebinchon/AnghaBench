
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocsp_print_options {int dummy; } ;


 int context ;
 int hx509_revoke_ocsp_print (int ,char*,int ) ;
 int stdout ;

int
ocsp_print(struct ocsp_print_options *opt, int argc, char **argv)
{
    hx509_revoke_ocsp_print(context, argv[0], stdout);
    return 0;
}
