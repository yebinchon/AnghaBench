
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* tl_data_next; int tl_data_contents; int tl_data_length; int tl_data_type; } ;
typedef TYPE_1__ krb5_tl_data ;
struct TYPE_8__ {int data; int length; } ;
typedef TYPE_2__ krb5_data ;
struct TYPE_9__ {TYPE_1__* tl_data; int n_tl_data; } ;
typedef TYPE_3__ kadm5_principal_ent_rec ;


 int KRB5_TL_EXTENSION ;
 TYPE_1__* ecalloc (int,int) ;

__attribute__((used)) static void
add_tl(kadm5_principal_ent_rec *princ, int type, krb5_data *data)
{
    krb5_tl_data *tl, **ptl;

    tl = ecalloc(1, sizeof(*tl));
    tl->tl_data_next = ((void*)0);
    tl->tl_data_type = KRB5_TL_EXTENSION;
    tl->tl_data_length = data->length;
    tl->tl_data_contents = data->data;

    princ->n_tl_data++;
    ptl = &princ->tl_data;
    while (*ptl != ((void*)0))
 ptl = &(*ptl)->tl_data_next;
    *ptl = tl;

    return;
}
