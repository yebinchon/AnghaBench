
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
struct TYPE_5__ {int ccache; } ;
typedef TYPE_1__ kcm_event ;
typedef int kcm_ccache ;
typedef int event ;


 scalar_t__ kcm_ccache_make_default_event (int ,TYPE_1__*,int *) ;
 scalar_t__ kcm_enqueue_event_internal (int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

krb5_error_code
kcm_ccache_enqueue_default(krb5_context context,
      kcm_ccache ccache,
      krb5_creds *newcred)
{
    kcm_event event;
    krb5_error_code ret;

    memset(&event, 0, sizeof(event));
    event.ccache = ccache;

    ret = kcm_ccache_make_default_event(context, &event, newcred);
    if (ret)
 return ret;

    ret = kcm_enqueue_event_internal(context, &event);
    if (ret)
 return ret;

    return 0;
}
