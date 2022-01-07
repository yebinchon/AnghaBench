
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct _memstream {int dummy; } ;
struct _citrus_region {int dummy; } ;
struct _citrus_db_locator {size_t dl_offset; size_t dl_hashval; } ;
struct _citrus_db_header_x {int dex_data_size; int dex_data_offset; int dex_key_offset; int dex_key_size; int dex_hash_value; int dex_next_offset; int dhx_entry_offset; int dhx_num_entries; } ;
struct _citrus_db_entry_x {int dex_data_size; int dex_data_offset; int dex_key_offset; int dex_key_size; int dex_hash_value; int dex_next_offset; int dhx_entry_offset; int dhx_num_entries; } ;
struct _citrus_db {size_t (* db_hashfunc ) (struct _citrus_region*) ;struct _citrus_region db_region; } ;


 int EFTYPE ;
 int ENOENT ;
 int SEEK_SET ;
 size_t _CITRUS_DB_ENTRY_SIZE ;
 scalar_t__ _citrus_memory_stream_seek (struct _memstream*,size_t,int ) ;
 int _memstream_bind (struct _memstream*,struct _citrus_region*) ;
 struct _citrus_db_header_x* _memstream_getregion (struct _memstream*,struct _citrus_region*,size_t) ;
 scalar_t__ _memstream_seek (struct _memstream*,size_t,int ) ;
 int _region_head (struct _citrus_region*) ;
 size_t _region_size (struct _citrus_region*) ;
 size_t be32toh (int ) ;
 scalar_t__ memcmp (int ,int ,size_t) ;
 size_t stub1 (struct _citrus_region*) ;

int
_citrus_db_lookup(struct _citrus_db *db, struct _citrus_region *key,
    struct _citrus_region *data, struct _citrus_db_locator *dl)
{
 struct _citrus_db_entry_x *dex;
 struct _citrus_db_header_x *dhx;
 struct _citrus_region r;
 struct _memstream ms;
 uint32_t hashval, num_entries;
 size_t offset;

 _memstream_bind(&ms, &db->db_region);

 dhx = _memstream_getregion(&ms, ((void*)0), sizeof(*dhx));
 num_entries = be32toh(dhx->dhx_num_entries);
 if (num_entries == 0)
  return (ENOENT);

 if (dl != ((void*)0) && dl->dl_offset>0) {
  hashval = dl->dl_hashval;
  offset = dl->dl_offset;
  if (offset >= _region_size(&db->db_region))
   return (ENOENT);
 } else {
  hashval = db->db_hashfunc(key)%num_entries;
  offset = be32toh(dhx->dhx_entry_offset) +
      hashval * _CITRUS_DB_ENTRY_SIZE;
  if (dl)
   dl->dl_hashval = hashval;
 }
 do {

  if (_citrus_memory_stream_seek(&ms, offset, SEEK_SET))
   return (EFTYPE);

  dex = _memstream_getregion(&ms, ((void*)0), _CITRUS_DB_ENTRY_SIZE);
  if (dex == ((void*)0))
   return (EFTYPE);


  offset = be32toh(dex->dex_next_offset);


  if (dl) {
   dl->dl_offset = offset;
   if (offset == 0)
    dl->dl_offset = _region_size(&db->db_region);
  }


  if (be32toh(dex->dex_hash_value) != hashval)

   break;

  if (be32toh(dex->dex_key_size) == _region_size(key)) {

   if (_memstream_seek(&ms, be32toh(dex->dex_key_offset),
       SEEK_SET))
    return (EFTYPE);

   if (_memstream_getregion(&ms, &r,
       _region_size(key)) == ((void*)0))
    return (EFTYPE);

   if (memcmp(_region_head(&r), _region_head(key),
       _region_size(key)) == 0) {

    if (_memstream_seek(
        &ms, be32toh(dex->dex_data_offset),
        SEEK_SET))
     return (EFTYPE);
    if (_memstream_getregion(
        &ms, data,
        be32toh(dex->dex_data_size)) == ((void*)0))
     return (EFTYPE);
    return (0);
   }
  }
 } while (offset != 0);

 return (ENOENT);
}
