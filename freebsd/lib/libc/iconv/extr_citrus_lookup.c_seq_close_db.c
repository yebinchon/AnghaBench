
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_lookup {int cl_dbfile; int cl_db; } ;


 int _db_close (int ) ;
 int _unmap_file (int *) ;

__attribute__((used)) static void
seq_close_db(struct _citrus_lookup *cl)
{

 _db_close(cl->cl_db);
 _unmap_file(&cl->cl_dbfile);
}
