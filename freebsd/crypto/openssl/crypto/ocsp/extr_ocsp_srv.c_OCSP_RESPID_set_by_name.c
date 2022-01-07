
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_4__ {int byName; } ;
struct TYPE_5__ {int type; TYPE_1__ value; } ;
typedef TYPE_2__ OCSP_RESPID ;


 int V_OCSP_RESPID_NAME ;
 int X509_NAME_set (int *,int ) ;
 int X509_get_subject_name (int *) ;

int OCSP_RESPID_set_by_name(OCSP_RESPID *respid, X509 *cert)
{
    if (!X509_NAME_set(&respid->value.byName, X509_get_subject_name(cert)))
        return 0;

    respid->type = V_OCSP_RESPID_NAME;

    return 1;
}
