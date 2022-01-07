
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t tl_data_length; struct TYPE_6__* tl_data_next; int * tl_data_contents; int tl_data_type; } ;
typedef TYPE_1__ krb5_tl_data ;
typedef int kadm5_ret_t ;
typedef TYPE_2__* kadm5_principal_ent_t ;
typedef int int16_t ;
struct TYPE_7__ {int n_tl_data; TYPE_1__* tl_data; } ;


 int ENOMEM ;
 int _kadm5_error_code (int ) ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int * malloc (size_t) ;
 int memcpy (int *,void const*,size_t) ;

__attribute__((used)) static kadm5_ret_t
add_tl_data(kadm5_principal_ent_t ent, int16_t type,
     const void *data, size_t size)
{
    krb5_tl_data *tl;

    tl = calloc(1, sizeof(*tl));
    if (tl == ((void*)0))
 return _kadm5_error_code(ENOMEM);

    tl->tl_data_type = type;
    tl->tl_data_length = size;
    tl->tl_data_contents = malloc(size);
    if (tl->tl_data_contents == ((void*)0) && size != 0) {
 free(tl);
 return _kadm5_error_code(ENOMEM);
    }
    memcpy(tl->tl_data_contents, data, size);

    tl->tl_data_next = ent->tl_data;
    ent->tl_data = tl;
    ent->n_tl_data++;

    return 0;
}
