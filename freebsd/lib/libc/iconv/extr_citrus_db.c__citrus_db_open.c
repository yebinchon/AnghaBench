
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;
struct _memstream {int dummy; } ;
struct _citrus_db_header_x {int dhx_num_entries; int dhx_entry_offset; int dhx_magic; } ;
struct _citrus_db {void* db_hashfunc_closure; int db_hashfunc; struct _region db_region; } ;
typedef int _citrus_db_hash_func_t ;


 int EFTYPE ;
 int SEEK_SET ;
 int _CITRUS_DB_ENTRY_SIZE ;
 int _CITRUS_DB_MAGIC_SIZE ;
 int _memstream_bind (struct _memstream*,struct _region*) ;
 struct _citrus_db_header_x* _memstream_getregion (struct _memstream*,int *,int) ;
 int _memstream_remainder (struct _memstream*) ;
 scalar_t__ _memstream_seek (struct _memstream*,int,int ) ;
 int be32toh (int ) ;
 int errno ;
 struct _citrus_db* malloc (int) ;
 scalar_t__ strncmp (int ,char const*,int ) ;

int
_citrus_db_open(struct _citrus_db **rdb, struct _region *r, const char *magic,
    _citrus_db_hash_func_t hashfunc, void *hashfunc_closure)
{
 struct _citrus_db *db;
 struct _citrus_db_header_x *dhx;
 struct _memstream ms;

 _memstream_bind(&ms, r);


 dhx = _memstream_getregion(&ms, ((void*)0), sizeof(*dhx));
 if (dhx == ((void*)0))
  return (EFTYPE);
 if (strncmp(dhx->dhx_magic, magic, _CITRUS_DB_MAGIC_SIZE) != 0)
  return (EFTYPE);
 if (_memstream_seek(&ms, be32toh(dhx->dhx_entry_offset), SEEK_SET))
  return (EFTYPE);

 if (be32toh(dhx->dhx_num_entries)*_CITRUS_DB_ENTRY_SIZE >
     _memstream_remainder(&ms))
  return (EFTYPE);

 db = malloc(sizeof(*db));
 if (db == ((void*)0))
  return (errno);
 db->db_region = *r;
 db->db_hashfunc = hashfunc;
 db->db_hashfunc_closure = hashfunc_closure;
 *rdb = db;

 return (0);
}
