
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bucket {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int archive_write_disk_set_group_lookup (struct archive*,struct bucket*,int ,int ) ;
 int archive_write_disk_set_user_lookup (struct archive*,struct bucket*,int ,int ) ;
 int cache_size ;
 struct bucket* calloc (int ,int) ;
 int cleanup ;
 int free (struct bucket*) ;
 int lookup_gid ;
 int lookup_uid ;

int
archive_write_disk_set_standard_lookup(struct archive *a)
{
 struct bucket *ucache = calloc(cache_size, sizeof(struct bucket));
 struct bucket *gcache = calloc(cache_size, sizeof(struct bucket));
 if (ucache == ((void*)0) || gcache == ((void*)0)) {
  free(ucache);
  free(gcache);
  return (ARCHIVE_FATAL);
 }
 archive_write_disk_set_group_lookup(a, gcache, lookup_gid, cleanup);
 archive_write_disk_set_user_lookup(a, ucache, lookup_uid, cleanup);
 return (ARCHIVE_OK);
}
