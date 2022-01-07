
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* krb5_principal ;
typedef scalar_t__ krb5_enctype ;
typedef int krb5_boolean ;
struct TYPE_5__ {scalar_t__ len; int * val; } ;
struct TYPE_6__ {TYPE_1__ name_string; } ;
struct TYPE_7__ {TYPE_2__ name; } ;


 scalar_t__ ETYPE_DES_CBC_CRC ;
 scalar_t__ ETYPE_DES_CBC_MD4 ;
 scalar_t__ ETYPE_DES_CBC_MD5 ;
 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (int ,char*) ;

krb5_boolean
_kdc_is_weak_exception(krb5_principal principal, krb5_enctype etype)
{
    if (principal->name.name_string.len > 0 &&
 strcmp(principal->name.name_string.val[0], "afs") == 0 &&
 (etype == ETYPE_DES_CBC_CRC
  || etype == ETYPE_DES_CBC_MD4
  || etype == ETYPE_DES_CBC_MD5))
 return TRUE;
    return FALSE;
}
