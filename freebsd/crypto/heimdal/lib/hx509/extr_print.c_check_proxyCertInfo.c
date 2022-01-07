
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cert_status {int isproxy; } ;
typedef int hx509_validate_ctx ;
typedef enum critical_flag { ____Placeholder_critical_flag } critical_flag ;
typedef int Extension ;


 int check_Null (int ,struct cert_status*,int,int const*) ;

__attribute__((used)) static int
check_proxyCertInfo(hx509_validate_ctx ctx,
      struct cert_status *status,
      enum critical_flag cf,
      const Extension *e)
{
    check_Null(ctx, status, cf, e);
    status->isproxy = 1;
    return 0;
}
