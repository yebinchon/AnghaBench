
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_2__* krb5_ccache ;
typedef int kcm_ccache ;
struct TYPE_5__ {scalar_t__ length; int * data; } ;
struct TYPE_6__ {TYPE_1__ data; } ;


 int KCMCACHE (TYPE_2__*) ;
 int KCM_ASSERT_VALID (int ) ;

__attribute__((used)) static krb5_error_code
kcmss_close(krb5_context context,
     krb5_ccache id)
{
    kcm_ccache c = KCMCACHE(id);

    KCM_ASSERT_VALID(c);

    id->data.data = ((void*)0);
    id->data.length = 0;

    return 0;
}
