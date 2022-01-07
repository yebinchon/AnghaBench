
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int krb5_preauthtype ;
struct TYPE_17__ {TYPE_4__* val; } ;
typedef TYPE_5__ krb5_preauthdata ;
typedef int krb5_context ;
struct TYPE_19__ {TYPE_1__* e_data; } ;
struct TYPE_18__ {size_t len; TYPE_3__* val; } ;
struct TYPE_16__ {int type; int info; } ;
struct TYPE_14__ {int length; int data; } ;
struct TYPE_15__ {int padata_type; TYPE_2__ padata_value; } ;
struct TYPE_13__ {int length; int data; } ;
typedef TYPE_6__ METHOD_DATA ;
typedef TYPE_7__ KRB_ERROR ;


 int ALLOC_SEQ (TYPE_5__*,int) ;



 int decode_ETYPE_INFO (int ,int ,int *,int *) ;
 int decode_METHOD_DATA (int ,int ,TYPE_6__*,int *) ;
 int free_METHOD_DATA (TYPE_6__*) ;

__attribute__((used)) static int
set_ptypes(krb5_context context,
    KRB_ERROR *error,
    const krb5_preauthtype **ptypes,
    krb5_preauthdata **preauth)
{
    static krb5_preauthdata preauth2;
    static krb5_preauthtype ptypes2[] = { 130, 128 };

    if(error->e_data) {
 METHOD_DATA md;
 size_t i;
 decode_METHOD_DATA(error->e_data->data,
      error->e_data->length,
      &md,
      ((void*)0));
 for(i = 0; i < md.len; i++){
     switch(md.val[i].padata_type){
     case 130:
  *ptypes = ptypes2;
  break;
     case 129:
  *preauth = &preauth2;
  ALLOC_SEQ(*preauth, 1);
  (*preauth)->val[0].type = 130;
  decode_ETYPE_INFO(md.val[i].padata_value.data,
      md.val[i].padata_value.length,
      &(*preauth)->val[0].info,
      ((void*)0));
  break;
     default:
  break;
     }
 }
 free_METHOD_DATA(&md);
    } else {
 *ptypes = ptypes2;
    }
    return(1);
}
