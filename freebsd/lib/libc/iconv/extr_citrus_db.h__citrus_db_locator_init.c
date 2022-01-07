
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_db_locator {scalar_t__ dl_offset; scalar_t__ dl_hashval; } ;



__attribute__((used)) static __inline void
_citrus_db_locator_init(struct _citrus_db_locator *dl)
{

 dl->dl_hashval = 0;
 dl->dl_offset = 0;
}
