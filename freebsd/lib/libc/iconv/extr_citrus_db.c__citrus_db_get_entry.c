
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct _region {int dummy; } ;
struct _memstream {int dummy; } ;
struct _citrus_db_header_x {int dex_data_size; int dex_data_offset; int dex_key_size; int dex_key_offset; int dhx_entry_offset; int dhx_num_entries; } ;
struct _citrus_db_entry_x {int dex_data_size; int dex_data_offset; int dex_key_size; int dex_key_offset; int dhx_entry_offset; int dhx_num_entries; } ;
struct _citrus_db {int db_region; } ;


 int EFTYPE ;
 int EINVAL ;
 int SEEK_SET ;
 int _CITRUS_DB_ENTRY_SIZE ;
 scalar_t__ _citrus_memory_stream_seek (struct _memstream*,size_t,int ) ;
 int _memstream_bind (struct _memstream*,int *) ;
 struct _citrus_db_header_x* _memstream_getregion (struct _memstream*,struct _region*,int) ;
 scalar_t__ _memstream_seek (struct _memstream*,int,int ) ;
 int be32toh (int ) ;

int
_citrus_db_get_entry(struct _citrus_db *db, int idx, struct _region *key,
    struct _region *data)
{
 struct _citrus_db_entry_x *dex;
 struct _citrus_db_header_x *dhx;
 struct _memstream ms;
 uint32_t num_entries;
 size_t offset;

 _memstream_bind(&ms, &db->db_region);

 dhx = _memstream_getregion(&ms, ((void*)0), sizeof(*dhx));
 num_entries = be32toh(dhx->dhx_num_entries);
 if (idx < 0 || (uint32_t)idx >= num_entries)
  return (EINVAL);


 offset = be32toh(dhx->dhx_entry_offset) + idx * _CITRUS_DB_ENTRY_SIZE;
 if (_citrus_memory_stream_seek(&ms, offset, SEEK_SET))
  return (EFTYPE);

 dex = _memstream_getregion(&ms, ((void*)0), _CITRUS_DB_ENTRY_SIZE);
 if (dex == ((void*)0))
  return (EFTYPE);

 if (_memstream_seek(&ms, be32toh(dex->dex_key_offset), SEEK_SET))
  return (EFTYPE);

 if (_memstream_getregion(&ms, key, be32toh(dex->dex_key_size))==((void*)0))
  return (EFTYPE);

 if (_memstream_seek(&ms, be32toh(dex->dex_data_offset), SEEK_SET))
  return (EFTYPE);

 if (_memstream_getregion(&ms, data, be32toh(dex->dex_data_size))==((void*)0))
  return (EFTYPE);

 return (0);
}
