
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_lookup {int cl_plainr; } ;


 int _unmap_file (int *) ;

__attribute__((used)) static void
seq_close_plain(struct _citrus_lookup *cl)
{

 _unmap_file(&cl->cl_plainr);
}
