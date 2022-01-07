
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;


 size_t _CITRUS_DB_HEADER_SIZE ;
 size_t _CITRUS_DB_MAGIC_SIZE ;
 int put32 (struct _region*,size_t*,size_t) ;
 int put8 (struct _region*,size_t*,int ) ;

__attribute__((used)) static __inline void
dump_header(struct _region *r, const char *magic, size_t *rofs,
    size_t num_entries)
{

 while (*rofs<_CITRUS_DB_MAGIC_SIZE)
  put8(r, rofs, *magic++);
 put32(r, rofs, num_entries);
 put32(r, rofs, _CITRUS_DB_HEADER_SIZE);
}
