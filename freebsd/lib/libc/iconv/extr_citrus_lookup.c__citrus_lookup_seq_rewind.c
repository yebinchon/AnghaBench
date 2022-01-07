
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_lookup {int cl_rewind; scalar_t__ cl_keylen; int * cl_key; } ;


 int free (int *) ;

void
_citrus_lookup_seq_rewind(struct _citrus_lookup *cl)
{

 cl->cl_rewind = 1;
 free(cl->cl_key);
 cl->cl_key = ((void*)0);
 cl->cl_keylen = 0;
}
