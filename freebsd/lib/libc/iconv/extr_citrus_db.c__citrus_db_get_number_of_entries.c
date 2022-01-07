
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _memstream {int dummy; } ;
struct _citrus_db_header_x {int dhx_num_entries; } ;
struct _citrus_db {int db_region; } ;


 int _memstream_bind (struct _memstream*,int *) ;
 struct _citrus_db_header_x* _memstream_getregion (struct _memstream*,int *,int) ;
 scalar_t__ be32toh (int ) ;

int
_citrus_db_get_number_of_entries(struct _citrus_db *db)
{
 struct _citrus_db_header_x *dhx;
 struct _memstream ms;

 _memstream_bind(&ms, &db->db_region);

 dhx = _memstream_getregion(&ms, ((void*)0), sizeof(*dhx));
 return ((int)be32toh(dhx->dhx_num_entries));
}
