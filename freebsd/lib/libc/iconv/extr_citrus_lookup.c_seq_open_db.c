
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;
struct _citrus_lookup {int cl_rewind; int * cl_close; int * cl_num_entries; int * cl_next; int * cl_lookup; scalar_t__ cl_dbidx; int cl_db; int cl_dbnum; struct _region cl_dbfile; } ;
typedef int path ;


 int PATH_MAX ;
 int _CITRUS_LOOKUP_MAGIC ;
 int _db_get_num_entries (int ) ;
 int _db_hash_std ;
 int _db_open (int *,struct _region*,int ,int ,int *) ;
 int _map_file (struct _region*,char*) ;
 int _unmap_file (struct _region*) ;
 int seq_close_db ;
 int seq_get_num_entries_db ;
 int seq_lookup_db ;
 int seq_next_db ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int
seq_open_db(struct _citrus_lookup *cl, const char *name)
{
 struct _region r;
 char path[PATH_MAX];
 int ret;

 snprintf(path, sizeof(path), "%s.db", name);
 ret = _map_file(&r, path);
 if (ret)
  return (ret);

 ret = _db_open(&cl->cl_db, &r, _CITRUS_LOOKUP_MAGIC,
     _db_hash_std, ((void*)0));
 if (ret) {
  _unmap_file(&r);
  return (ret);
 }

 cl->cl_dbfile = r;
 cl->cl_dbnum = _db_get_num_entries(cl->cl_db);
 cl->cl_dbidx = 0;
 cl->cl_rewind = 1;
 cl->cl_lookup = &seq_lookup_db;
 cl->cl_next = &seq_next_db;
 cl->cl_num_entries = &seq_get_num_entries_db;
 cl->cl_close = &seq_close_db;

 return (0);
}
