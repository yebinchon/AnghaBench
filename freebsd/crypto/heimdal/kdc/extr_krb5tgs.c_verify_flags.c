
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_kdc_configuration ;
typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {scalar_t__ invalid; } ;
struct TYPE_5__ {scalar_t__ endtime; TYPE_1__ flags; } ;
typedef TYPE_2__ EncTicketPart ;


 int KRB5KRB_AP_ERR_TKT_EXPIRED ;
 int KRB5KRB_AP_ERR_TKT_NYV ;
 int kdc_log (int ,int *,int ,char*,char const*) ;
 scalar_t__ kdc_time ;

__attribute__((used)) static krb5_error_code
verify_flags (krb5_context context,
       krb5_kdc_configuration *config,
       const EncTicketPart *et,
       const char *pstr)
{
    if(et->endtime < kdc_time){
 kdc_log(context, config, 0, "Ticket expired (%s)", pstr);
 return KRB5KRB_AP_ERR_TKT_EXPIRED;
    }
    if(et->flags.invalid){
 kdc_log(context, config, 0, "Ticket not valid (%s)", pstr);
 return KRB5KRB_AP_ERR_TKT_NYV;
    }
    return 0;
}
