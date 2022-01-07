
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_cache {void* size; struct archive* archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int archive_read_disk_set_gname_lookup (struct archive*,struct name_cache*,int ,int ) ;
 int archive_read_disk_set_uname_lookup (struct archive*,struct name_cache*,int ,int ) ;
 int archive_set_error (struct archive*,int ,char*) ;
 int cleanup ;
 int free (struct name_cache*) ;
 int lookup_gname ;
 int lookup_uname ;
 struct name_cache* malloc (int) ;
 int memset (struct name_cache*,int ,int) ;
 void* name_cache_size ;

int
archive_read_disk_set_standard_lookup(struct archive *a)
{
 struct name_cache *ucache = malloc(sizeof(struct name_cache));
 struct name_cache *gcache = malloc(sizeof(struct name_cache));

 if (ucache == ((void*)0) || gcache == ((void*)0)) {
  archive_set_error(a, ENOMEM,
      "Can't allocate uname/gname lookup cache");
  free(ucache);
  free(gcache);
  return (ARCHIVE_FATAL);
 }

 memset(ucache, 0, sizeof(*ucache));
 ucache->archive = a;
 ucache->size = name_cache_size;
 memset(gcache, 0, sizeof(*gcache));
 gcache->archive = a;
 gcache->size = name_cache_size;

 archive_read_disk_set_gname_lookup(a, gcache, lookup_gname, cleanup);
 archive_read_disk_set_uname_lookup(a, ucache, lookup_uname, cleanup);

 return (ARCHIVE_OK);
}
