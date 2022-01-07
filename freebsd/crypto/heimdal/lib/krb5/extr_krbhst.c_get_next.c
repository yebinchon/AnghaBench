
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_krbhst_info {struct krb5_krbhst_info* next; } ;
struct krb5_krbhst_data {struct krb5_krbhst_info** index; } ;
typedef struct krb5_krbhst_info krb5_krbhst_info ;
typedef int krb5_boolean ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static krb5_boolean
get_next(struct krb5_krbhst_data *kd, krb5_krbhst_info **host)
{
    struct krb5_krbhst_info *hi = *kd->index;
    if(hi != ((void*)0)) {
 *host = hi;
 kd->index = &(*kd->index)->next;
 return TRUE;
    }
    return FALSE;
}
