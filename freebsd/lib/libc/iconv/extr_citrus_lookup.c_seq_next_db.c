
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;
struct _citrus_lookup {scalar_t__ cl_dbidx; scalar_t__ cl_dbnum; int cl_db; scalar_t__ cl_rewind; int cl_dblocator; scalar_t__ cl_key; int cl_keylen; } ;


 int ENOENT ;
 int _db_get_entry (int ,int ,struct _region*,struct _region*) ;
 int _db_lookup_by_s (int ,scalar_t__,struct _region*,int *) ;
 int _region_init (struct _region*,scalar_t__,int ) ;

__attribute__((used)) static int
seq_next_db(struct _citrus_lookup *cl, struct _region *key,
    struct _region *data)
{

 if (cl->cl_key) {
  if (key)
   _region_init(key, cl->cl_key, cl->cl_keylen);
  return (_db_lookup_by_s(cl->cl_db, cl->cl_key, data,
      &cl->cl_dblocator));
 }

 if (cl->cl_rewind) {
  cl->cl_dbidx = 0;
 }
 cl->cl_rewind = 0;
 if (cl->cl_dbidx >= cl->cl_dbnum)
  return (ENOENT);

 return (_db_get_entry(cl->cl_db, cl->cl_dbidx++, key, data));
}
