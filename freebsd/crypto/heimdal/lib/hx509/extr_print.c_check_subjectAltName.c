
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cert_status {int haveSAN; } ;
typedef int hx509_validate_ctx ;
typedef enum critical_flag { ____Placeholder_critical_flag } critical_flag ;
typedef int Extension ;


 int check_altName (int ,struct cert_status*,char*,int,int const*) ;

__attribute__((used)) static int
check_subjectAltName(hx509_validate_ctx ctx,
       struct cert_status *status,
       enum critical_flag cf,
       const Extension *e)
{
    status->haveSAN = 1;
    return check_altName(ctx, status, "subject", cf, e);
}
