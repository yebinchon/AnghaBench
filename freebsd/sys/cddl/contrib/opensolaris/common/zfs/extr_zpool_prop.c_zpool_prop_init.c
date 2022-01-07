
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int member_1; } ;
typedef TYPE_1__ zprop_index_t ;


 int PROP_DEFAULT ;
 int PROP_ONETIME ;
 int PROP_READONLY ;
 int PROP_TYPE_NUMBER ;
 int PROP_TYPE_STRING ;
 int SPA_VERSION ;
 int ZFS_TYPE_POOL ;



 int ZPOOL_PROP_ALLOCATED ;
 int ZPOOL_PROP_ALTROOT ;
 int ZPOOL_PROP_AUTOEXPAND ;
 int ZPOOL_PROP_AUTOREPLACE ;
 int ZPOOL_PROP_BOOTFS ;
 int ZPOOL_PROP_BOOTSIZE ;
 int ZPOOL_PROP_CACHEFILE ;
 int ZPOOL_PROP_CAPACITY ;
 int ZPOOL_PROP_CHECKPOINT ;
 int ZPOOL_PROP_COMMENT ;
 int ZPOOL_PROP_DEDUPDITTO ;
 int ZPOOL_PROP_DEDUPRATIO ;
 int ZPOOL_PROP_DELEGATION ;
 int ZPOOL_PROP_EXPANDSZ ;
 int ZPOOL_PROP_FAILUREMODE ;
 int ZPOOL_PROP_FRAGMENTATION ;
 int ZPOOL_PROP_FREE ;
 int ZPOOL_PROP_FREEING ;
 int ZPOOL_PROP_GUID ;
 int ZPOOL_PROP_HEALTH ;
 int ZPOOL_PROP_LEAKED ;
 int ZPOOL_PROP_LISTSNAPS ;
 int ZPOOL_PROP_MAXBLOCKSIZE ;
 int ZPOOL_PROP_MAXDNODESIZE ;
 int ZPOOL_PROP_NAME ;
 int ZPOOL_PROP_READONLY ;
 int ZPOOL_PROP_SIZE ;
 int ZPOOL_PROP_TNAME ;
 int ZPOOL_PROP_VERSION ;
 int zprop_register_hidden (int ,char*,int ,int ,int ,char*) ;
 int zprop_register_index (int ,char*,int const,int ,int ,char*,char*,TYPE_1__*) ;
 int zprop_register_number (int ,char*,int ,int ,int ,char*,char*) ;
 int zprop_register_string (int ,char*,int *,int ,int ,char*,char*) ;

void
zpool_prop_init(void)
{
 static zprop_index_t boolean_table[] = {
  { "off", 0},
  { "on", 1},
  { ((void*)0) }
 };

 static zprop_index_t failuremode_table[] = {
  { "wait", 128 },
  { "continue", 130 },
  { "panic", 129 },
  { ((void*)0) }
 };


 zprop_register_string(ZPOOL_PROP_ALTROOT, "altroot", ((void*)0), PROP_DEFAULT,
     ZFS_TYPE_POOL, "<path>", "ALTROOT");
 zprop_register_string(ZPOOL_PROP_BOOTFS, "bootfs", ((void*)0), PROP_DEFAULT,
     ZFS_TYPE_POOL, "<filesystem>", "BOOTFS");
 zprop_register_string(ZPOOL_PROP_CACHEFILE, "cachefile", ((void*)0),
     PROP_DEFAULT, ZFS_TYPE_POOL, "<file> | none", "CACHEFILE");
 zprop_register_string(ZPOOL_PROP_COMMENT, "comment", ((void*)0),
     PROP_DEFAULT, ZFS_TYPE_POOL, "<comment-string>", "COMMENT");


 zprop_register_number(ZPOOL_PROP_SIZE, "size", 0, PROP_READONLY,
     ZFS_TYPE_POOL, "<size>", "SIZE");
 zprop_register_number(ZPOOL_PROP_FREE, "free", 0, PROP_READONLY,
     ZFS_TYPE_POOL, "<size>", "FREE");
 zprop_register_number(ZPOOL_PROP_FREEING, "freeing", 0, PROP_READONLY,
     ZFS_TYPE_POOL, "<size>", "FREEING");
 zprop_register_number(ZPOOL_PROP_CHECKPOINT, "checkpoint", 0,
     PROP_READONLY, ZFS_TYPE_POOL, "<size>", "CKPOINT");
 zprop_register_number(ZPOOL_PROP_LEAKED, "leaked", 0, PROP_READONLY,
     ZFS_TYPE_POOL, "<size>", "LEAKED");
 zprop_register_number(ZPOOL_PROP_ALLOCATED, "allocated", 0,
     PROP_READONLY, ZFS_TYPE_POOL, "<size>", "ALLOC");
 zprop_register_number(ZPOOL_PROP_EXPANDSZ, "expandsize", 0,
     PROP_READONLY, ZFS_TYPE_POOL, "<size>", "EXPANDSZ");
 zprop_register_number(ZPOOL_PROP_FRAGMENTATION, "fragmentation", 0,
     PROP_READONLY, ZFS_TYPE_POOL, "<percent>", "FRAG");
 zprop_register_number(ZPOOL_PROP_CAPACITY, "capacity", 0, PROP_READONLY,
     ZFS_TYPE_POOL, "<size>", "CAP");
 zprop_register_number(ZPOOL_PROP_GUID, "guid", 0, PROP_READONLY,
     ZFS_TYPE_POOL, "<guid>", "GUID");
 zprop_register_number(ZPOOL_PROP_HEALTH, "health", 0, PROP_READONLY,
     ZFS_TYPE_POOL, "<state>", "HEALTH");
 zprop_register_number(ZPOOL_PROP_DEDUPRATIO, "dedupratio", 0,
     PROP_READONLY, ZFS_TYPE_POOL, "<1.00x or higher if deduped>",
     "DEDUP");


 zprop_register_number(ZPOOL_PROP_BOOTSIZE, "bootsize", 0, PROP_ONETIME,
     ZFS_TYPE_POOL, "<size>", "BOOTSIZE");


 zprop_register_number(ZPOOL_PROP_VERSION, "version", SPA_VERSION,
     PROP_DEFAULT, ZFS_TYPE_POOL, "<version>", "VERSION");
 zprop_register_number(ZPOOL_PROP_DEDUPDITTO, "dedupditto", 0,
     PROP_DEFAULT, ZFS_TYPE_POOL, "<threshold (min 100)>", "DEDUPDITTO");


 zprop_register_index(ZPOOL_PROP_DELEGATION, "delegation", 1,
     PROP_DEFAULT, ZFS_TYPE_POOL, "on | off", "DELEGATION",
     boolean_table);
 zprop_register_index(ZPOOL_PROP_AUTOREPLACE, "autoreplace", 0,
     PROP_DEFAULT, ZFS_TYPE_POOL, "on | off", "REPLACE", boolean_table);
 zprop_register_index(ZPOOL_PROP_LISTSNAPS, "listsnapshots", 0,
     PROP_DEFAULT, ZFS_TYPE_POOL, "on | off", "LISTSNAPS",
     boolean_table);
 zprop_register_index(ZPOOL_PROP_AUTOEXPAND, "autoexpand", 0,
     PROP_DEFAULT, ZFS_TYPE_POOL, "on | off", "EXPAND", boolean_table);
 zprop_register_index(ZPOOL_PROP_READONLY, "readonly", 0,
     PROP_DEFAULT, ZFS_TYPE_POOL, "on | off", "RDONLY", boolean_table);


 zprop_register_index(ZPOOL_PROP_FAILUREMODE, "failmode",
     128, PROP_DEFAULT, ZFS_TYPE_POOL,
     "wait | continue | panic", "FAILMODE", failuremode_table);


 zprop_register_hidden(ZPOOL_PROP_NAME, "name", PROP_TYPE_STRING,
     PROP_READONLY, ZFS_TYPE_POOL, "NAME");
 zprop_register_hidden(ZPOOL_PROP_MAXBLOCKSIZE, "maxblocksize",
     PROP_TYPE_NUMBER, PROP_READONLY, ZFS_TYPE_POOL, "MAXBLOCKSIZE");
 zprop_register_hidden(ZPOOL_PROP_TNAME, "tname", PROP_TYPE_STRING,
     PROP_ONETIME, ZFS_TYPE_POOL, "TNAME");
 zprop_register_hidden(ZPOOL_PROP_MAXDNODESIZE, "maxdnodesize",
     PROP_TYPE_NUMBER, PROP_READONLY, ZFS_TYPE_POOL, "MAXDNODESIZE");
}
