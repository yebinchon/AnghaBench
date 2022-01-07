
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_lookup {int (* cl_close ) (struct _citrus_lookup*) ;struct _citrus_lookup* cl_key; } ;


 int free (struct _citrus_lookup*) ;
 int stub1 (struct _citrus_lookup*) ;

void
_citrus_lookup_seq_close(struct _citrus_lookup *cl)
{

 free(cl->cl_key);
 (*cl->cl_close)(cl);
 free(cl);
}
