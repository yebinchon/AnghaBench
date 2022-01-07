
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xo_handle_t ;
struct TYPE_6__ {int c_data; } ;
typedef TYPE_1__ cbor_private_t ;


 int CBOR_INDEF ;
 int CBOR_MAP ;
 int bzero (TYPE_1__*,int) ;
 int cbor_append (int *,TYPE_1__*,int *,int,int ,int *) ;
 int xo_buf_init (int *) ;
 TYPE_1__* xo_realloc (int *,int) ;
 int xo_set_private (int *,TYPE_1__*) ;

__attribute__((used)) static int
cbor_create (xo_handle_t *xop)
{
    cbor_private_t *cbor = xo_realloc(((void*)0), sizeof(*cbor));
    if (cbor == ((void*)0))
 return -1;

    bzero(cbor, sizeof(*cbor));
    xo_buf_init(&cbor->c_data);

    xo_set_private(xop, cbor);

    cbor_append(xop, cbor, &cbor->c_data, CBOR_MAP | CBOR_INDEF, 0, ((void*)0));

    return 0;
}
