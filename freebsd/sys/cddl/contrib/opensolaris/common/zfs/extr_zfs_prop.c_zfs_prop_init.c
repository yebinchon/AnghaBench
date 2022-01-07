
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int member_1; } ;
typedef TYPE_1__ zprop_index_t ;


 int B_FALSE ;
 int B_TRUE ;
 int PROP_DEFAULT ;
 int PROP_INHERIT ;
 int PROP_ONETIME ;
 int PROP_READONLY ;
 int PROP_TYPE_NUMBER ;
 int PROP_TYPE_STRING ;
 int SPA_OLD_MAXBLOCKSIZE ;




 int UINT64_MAX ;
 char* ZFS_MLSLABEL_DEFAULT ;
 int ZFS_PROP_ACLINHERIT ;
 int ZFS_PROP_ACLMODE ;
 int ZFS_PROP_ATIME ;
 int ZFS_PROP_AVAILABLE ;
 int ZFS_PROP_CANMOUNT ;
 int ZFS_PROP_CASE ;
 int ZFS_PROP_CHECKSUM ;
 int ZFS_PROP_CLONES ;
 int ZFS_PROP_COMPRESSION ;
 int ZFS_PROP_COMPRESSRATIO ;
 int ZFS_PROP_COPIES ;
 int ZFS_PROP_CREATETXG ;
 int ZFS_PROP_CREATION ;
 int ZFS_PROP_DEDUP ;
 int ZFS_PROP_DEFER_DESTROY ;
 int ZFS_PROP_DEVICES ;
 int ZFS_PROP_DNODESIZE ;
 int ZFS_PROP_EXEC ;
 int ZFS_PROP_FILESYSTEM_COUNT ;
 int ZFS_PROP_FILESYSTEM_LIMIT ;
 int ZFS_PROP_GUID ;
 int ZFS_PROP_INCONSISTENT ;
 int ZFS_PROP_ISCSIOPTIONS ;
 int ZFS_PROP_LOGBIAS ;
 int ZFS_PROP_LOGICALREFERENCED ;
 int ZFS_PROP_LOGICALUSED ;
 int ZFS_PROP_MLSLABEL ;
 int ZFS_PROP_MOUNTED ;
 int ZFS_PROP_MOUNTPOINT ;
 int ZFS_PROP_NAME ;
 int ZFS_PROP_NBMAND ;
 int ZFS_PROP_NORMALIZE ;
 int ZFS_PROP_NUMCLONES ;
 int ZFS_PROP_OBJSETID ;
 int ZFS_PROP_ORIGIN ;
 int ZFS_PROP_PREV_SNAP ;
 int ZFS_PROP_PRIMARYCACHE ;
 int ZFS_PROP_QUOTA ;
 int ZFS_PROP_READONLY ;
 int ZFS_PROP_RECEIVE_RESUME_TOKEN ;
 int ZFS_PROP_RECORDSIZE ;
 int ZFS_PROP_REDUNDANT_METADATA ;
 int ZFS_PROP_REFERENCED ;
 int ZFS_PROP_REFQUOTA ;
 int ZFS_PROP_REFRATIO ;
 int ZFS_PROP_REFRESERVATION ;
 int ZFS_PROP_REMAPTXG ;
 int ZFS_PROP_RESERVATION ;
 int ZFS_PROP_SECONDARYCACHE ;
 int ZFS_PROP_SETUID ;
 int ZFS_PROP_SHARENFS ;
 int ZFS_PROP_SHARESMB ;
 int ZFS_PROP_SNAPDIR ;
 int ZFS_PROP_SNAPSHOT_COUNT ;
 int ZFS_PROP_SNAPSHOT_LIMIT ;
 int ZFS_PROP_STMF_SHAREINFO ;
 int ZFS_PROP_SYNC ;
 int ZFS_PROP_TYPE ;
 int ZFS_PROP_UNIQUE ;
 int ZFS_PROP_USED ;
 int ZFS_PROP_USEDCHILD ;
 int ZFS_PROP_USEDDS ;
 int ZFS_PROP_USEDREFRESERV ;
 int ZFS_PROP_USEDSNAP ;
 int ZFS_PROP_USERACCOUNTING ;
 int ZFS_PROP_USERREFS ;
 int ZFS_PROP_UTF8ONLY ;
 int ZFS_PROP_VERSION ;
 int ZFS_PROP_VOLBLOCKSIZE ;
 int ZFS_PROP_VOLMODE ;
 int ZFS_PROP_VOLSIZE ;
 int ZFS_PROP_VSCAN ;
 int ZFS_PROP_WRITTEN ;
 int ZFS_PROP_XATTR ;
 int ZFS_PROP_ZONED ;







 int ZFS_TYPE_BOOKMARK ;
 int ZFS_TYPE_DATASET ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_SNAPSHOT ;
 int ZFS_TYPE_VOLUME ;




 int const ZIO_CHECKSUM_DEFAULT ;
 int const ZIO_COMPRESS_DEFAULT ;
 int ZVOL_DEFAULT_BLOCKSIZE ;
 int zprop_register_hidden (int ,char*,int ,int ,int,char*) ;
 int zprop_register_impl (int ,char*,int ,int ,int *,int ,int,char*,char*,int ,int ,int *) ;
 int zprop_register_index (int ,char*,int const,int ,int,char*,char*,TYPE_1__*) ;
 int zprop_register_number (int ,char*,int ,int ,int,char*,char*) ;
 int zprop_register_string (int ,char*,char*,int ,int,char*,char*) ;

void
zfs_prop_init(void)
{
 static zprop_index_t checksum_table[] = {
  { "on", 147 },
  { "off", 148 },
  { "fletcher2", 151 },
  { "fletcher4", 150 },
  { "sha256", 146 },
  { "noparity", 149 },
  { "sha512", 145 },
  { "skein", 144 },



  { ((void*)0) }
 };

 static zprop_index_t dedup_table[] = {
  { "on", 147 },
  { "off", 148 },
  { "verify", 147 | 143 },
  { "sha256", 146 },
  { "sha256,verify",
    146 | 143 },
  { "sha512", 145 },
  { "sha512,verify",
    145 | 143 },
  { "skein", 144 },
  { "skein,verify",
    144 | 143 },




  { ((void*)0) }
 };

 static zprop_index_t compress_table[] = {
  { "on", 130 },
  { "off", 131 },
  { "lzjb", 132 },
  { "gzip", 137 },
  { "gzip-1", 142 },
  { "gzip-2", 141 },
  { "gzip-3", 140 },
  { "gzip-4", 139 },
  { "gzip-5", 138 },
  { "gzip-6", 137 },
  { "gzip-7", 136 },
  { "gzip-8", 135 },
  { "gzip-9", 134 },
  { "zle", 129 },
  { "lz4", 133 },
  { ((void*)0) }
 };

 static zprop_index_t snapdir_table[] = {
  { "hidden", 161 },
  { "visible", 160 },
  { ((void*)0) }
 };

 static zprop_index_t acl_mode_table[] = {
  { "discard", 187 },
  { "groupmask", 186 },
  { "passthrough", 184 },
  { "restricted", 182 },
  { ((void*)0) }
 };

 static zprop_index_t acl_inherit_table[] = {
  { "discard", 187 },
  { "noallow", 185 },
  { "restricted", 182 },
  { "passthrough", 184 },
  { "secure", 182 },
  { "passthrough-x", 183 },
  { ((void*)0) }
 };

 static zprop_index_t case_table[] = {
  { "sensitive", 173 },
  { "insensitive", 175 },
  { "mixed", 174 },
  { ((void*)0) }
 };

 static zprop_index_t copies_table[] = {
  { "1", 1 },
  { "2", 2 },
  { "3", 3 },
  { ((void*)0) }
 };






 static zprop_index_t normalize_table[] = {
  { "none", 0 },
  { "formD", 190 },
  { "formKC", 189 },
  { "formC", 191 },
  { "formKD", 188 },
  { ((void*)0) }
 };

 static zprop_index_t version_table[] = {
  { "1", 1 },
  { "2", 2 },
  { "3", 3 },
  { "4", 4 },
  { "5", 5 },
  { "current", 128 },
  { ((void*)0) }
 };

 static zprop_index_t boolean_table[] = {
  { "off", 0 },
  { "on", 1 },
  { ((void*)0) }
 };

 static zprop_index_t logbias_table[] = {
  { "latency", 165 },
  { "throughput", 164 },
  { ((void*)0) }
 };

 static zprop_index_t canmount_table[] = {
  { "off", 177 },
  { "on", 176 },
  { "noauto", 178 },
  { ((void*)0) }
 };

 static zprop_index_t cache_table[] = {
  { "none", 179 },
  { "metadata", 180 },
  { "all", 181 },
  { ((void*)0) }
 };

 static zprop_index_t sync_table[] = {
  { "standard", 157 },
  { "always", 159 },
  { "disabled", 158 },
  { ((void*)0) }
 };

 static zprop_index_t volmode_table[] = {
  { "default", 156 },
  { "geom", 154 },
  { "dev", 155 },
  { "none", 153 },
  { ((void*)0) }
 };

 static zprop_index_t dnsize_table[] = {
  { "legacy", 166 },
  { "auto", 167 },
  { "1k", 171 },
  { "2k", 170 },
  { "4k", 169 },
  { "8k", 168 },
  { "16k", 172 },
  { ((void*)0) }
 };

 static zprop_index_t redundant_metadata_table[] = {
  { "all", 163 },
  { "most", 162 },
  { ((void*)0) }
 };


 zprop_register_index(ZFS_PROP_REDUNDANT_METADATA, "redundant_metadata",
     163,
     PROP_INHERIT, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME,
     "all | most", "REDUND_MD",
     redundant_metadata_table);
 zprop_register_index(ZFS_PROP_SYNC, "sync", 157,
     PROP_INHERIT, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME,
     "standard | always | disabled", "SYNC",
     sync_table);
 zprop_register_index(ZFS_PROP_CHECKSUM, "checksum",
     ZIO_CHECKSUM_DEFAULT, PROP_INHERIT, ZFS_TYPE_FILESYSTEM |
     ZFS_TYPE_VOLUME,
     "on | off | fletcher2 | fletcher4 | sha256 | sha512 | "
     "skein", "CHECKSUM", checksum_table);
 zprop_register_index(ZFS_PROP_DEDUP, "dedup", 148,
     PROP_INHERIT, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME,
     "on | off | verify | sha256[,verify], sha512[,verify], "
     "skein[,verify]", "DEDUP", dedup_table);
 zprop_register_index(ZFS_PROP_COMPRESSION, "compression",
     ZIO_COMPRESS_DEFAULT, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME,
     "on | off | lzjb | gzip | gzip-[1-9] | zle | lz4",
     "COMPRESS", compress_table);
 zprop_register_index(ZFS_PROP_SNAPDIR, "snapdir", 161,
     PROP_INHERIT, ZFS_TYPE_FILESYSTEM,
     "hidden | visible", "SNAPDIR", snapdir_table);
 zprop_register_index(ZFS_PROP_ACLMODE, "aclmode", 187,
     PROP_INHERIT, ZFS_TYPE_FILESYSTEM,
     "discard | groupmask | passthrough | restricted", "ACLMODE",
     acl_mode_table);
 zprop_register_index(ZFS_PROP_ACLINHERIT, "aclinherit",
     182, PROP_INHERIT, ZFS_TYPE_FILESYSTEM,
     "discard | noallow | restricted | passthrough | passthrough-x",
     "ACLINHERIT", acl_inherit_table);
 zprop_register_index(ZFS_PROP_COPIES, "copies", 1, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME,
     "1 | 2 | 3", "COPIES", copies_table);
 zprop_register_index(ZFS_PROP_PRIMARYCACHE, "primarycache",
     181, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_SNAPSHOT | ZFS_TYPE_VOLUME,
     "all | none | metadata", "PRIMARYCACHE", cache_table);
 zprop_register_index(ZFS_PROP_SECONDARYCACHE, "secondarycache",
     181, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_SNAPSHOT | ZFS_TYPE_VOLUME,
     "all | none | metadata", "SECONDARYCACHE", cache_table);
 zprop_register_index(ZFS_PROP_LOGBIAS, "logbias", 165,
     PROP_INHERIT, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME,
     "latency | throughput", "LOGBIAS", logbias_table);
 zprop_register_index(ZFS_PROP_VOLMODE, "volmode",
     156, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_SNAPSHOT | ZFS_TYPE_VOLUME,
     "default | geom | dev | none", "VOLMODE", volmode_table);

 zprop_register_index(ZFS_PROP_DNODESIZE, "dnodesize",
     166, PROP_INHERIT, ZFS_TYPE_FILESYSTEM,
     "legacy | auto | 1k | 2k | 4k | 8k | 16k", "DNSIZE", dnsize_table);


 zprop_register_index(ZFS_PROP_ATIME, "atime", 1, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM, "on | off", "ATIME", boolean_table);
 zprop_register_index(ZFS_PROP_DEVICES, "devices", 1, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_SNAPSHOT, "on | off", "DEVICES",
     boolean_table);
 zprop_register_index(ZFS_PROP_EXEC, "exec", 1, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_SNAPSHOT, "on | off", "EXEC",
     boolean_table);
 zprop_register_index(ZFS_PROP_SETUID, "setuid", 1, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_SNAPSHOT, "on | off", "SETUID",
     boolean_table);
 zprop_register_index(ZFS_PROP_READONLY, "readonly", 0, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME, "on | off", "RDONLY",
     boolean_table);
 zprop_register_index(ZFS_PROP_ZONED, "jailed", 0, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM, "on | off", "JAILED", boolean_table);
 zprop_register_index(ZFS_PROP_XATTR, "xattr", 1, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_SNAPSHOT, "on | off", "XATTR",
     boolean_table);
 zprop_register_index(ZFS_PROP_VSCAN, "vscan", 0, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM, "on | off", "VSCAN",
     boolean_table);
 zprop_register_index(ZFS_PROP_NBMAND, "nbmand", 0, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_SNAPSHOT, "on | off", "NBMAND",
     boolean_table);


 zprop_register_index(ZFS_PROP_VERSION, "version", 0, PROP_DEFAULT,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_SNAPSHOT,
     "1 | 2 | 3 | 4 | 5 | current", "VERSION", version_table);
 zprop_register_index(ZFS_PROP_CANMOUNT, "canmount", 176,
     PROP_DEFAULT, ZFS_TYPE_FILESYSTEM, "on | off | noauto",
     "CANMOUNT", canmount_table);


 zprop_register_index(ZFS_PROP_MOUNTED, "mounted", 0, PROP_READONLY,
     ZFS_TYPE_FILESYSTEM, "yes | no", "MOUNTED", boolean_table);
 zprop_register_index(ZFS_PROP_DEFER_DESTROY, "defer_destroy", 0,
     PROP_READONLY, ZFS_TYPE_SNAPSHOT, "yes | no", "DEFER_DESTROY",
     boolean_table);


 zprop_register_index(ZFS_PROP_NORMALIZE, "normalization", 0,
     PROP_ONETIME, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_SNAPSHOT,
     "none | formC | formD | formKC | formKD", "NORMALIZATION",
     normalize_table);
 zprop_register_index(ZFS_PROP_CASE, "casesensitivity",
     173, PROP_ONETIME, ZFS_TYPE_FILESYSTEM |
     ZFS_TYPE_SNAPSHOT,
     "sensitive | insensitive | mixed", "CASE", case_table);


 zprop_register_index(ZFS_PROP_UTF8ONLY, "utf8only", 0, PROP_ONETIME,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_SNAPSHOT,
     "on | off", "UTF8ONLY", boolean_table);


 zprop_register_string(ZFS_PROP_ORIGIN, "origin", ((void*)0), PROP_READONLY,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME, "<snapshot>", "ORIGIN");
 zprop_register_string(ZFS_PROP_CLONES, "clones", ((void*)0), PROP_READONLY,
     ZFS_TYPE_SNAPSHOT, "<dataset>[,...]", "CLONES");
 zprop_register_string(ZFS_PROP_MOUNTPOINT, "mountpoint", "/",
     PROP_INHERIT, ZFS_TYPE_FILESYSTEM, "<path> | legacy | none",
     "MOUNTPOINT");
 zprop_register_string(ZFS_PROP_SHARENFS, "sharenfs", "off",
     PROP_INHERIT, ZFS_TYPE_FILESYSTEM, "on | off | share(1M) options",
     "SHARENFS");
 zprop_register_string(ZFS_PROP_TYPE, "type", ((void*)0), PROP_READONLY,
     ZFS_TYPE_DATASET | ZFS_TYPE_BOOKMARK,
     "filesystem | volume | snapshot | bookmark", "TYPE");
 zprop_register_string(ZFS_PROP_SHARESMB, "sharesmb", "off",
     PROP_INHERIT, ZFS_TYPE_FILESYSTEM,
     "on | off | sharemgr(1M) options", "SHARESMB");
 zprop_register_string(ZFS_PROP_MLSLABEL, "mlslabel",
     ZFS_MLSLABEL_DEFAULT, PROP_INHERIT, ZFS_TYPE_DATASET,
     "<sensitivity label>", "MLSLABEL");
 zprop_register_string(ZFS_PROP_RECEIVE_RESUME_TOKEN,
     "receive_resume_token",
     ((void*)0), PROP_READONLY, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME,
     "<string token>", "RESUMETOK");


 zprop_register_number(ZFS_PROP_USED, "used", 0, PROP_READONLY,
     ZFS_TYPE_DATASET, "<size>", "USED");
 zprop_register_number(ZFS_PROP_AVAILABLE, "available", 0, PROP_READONLY,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME, "<size>", "AVAIL");
 zprop_register_number(ZFS_PROP_REFERENCED, "referenced", 0,
     PROP_READONLY, ZFS_TYPE_DATASET, "<size>", "REFER");
 zprop_register_number(ZFS_PROP_COMPRESSRATIO, "compressratio", 0,
     PROP_READONLY, ZFS_TYPE_DATASET,
     "<1.00x or higher if compressed>", "RATIO");
 zprop_register_number(ZFS_PROP_REFRATIO, "refcompressratio", 0,
     PROP_READONLY, ZFS_TYPE_DATASET,
     "<1.00x or higher if compressed>", "REFRATIO");
 zprop_register_number(ZFS_PROP_VOLBLOCKSIZE, "volblocksize",
     ZVOL_DEFAULT_BLOCKSIZE, PROP_ONETIME,
     ZFS_TYPE_VOLUME, "512 to 128k, power of 2", "VOLBLOCK");
 zprop_register_number(ZFS_PROP_USEDSNAP, "usedbysnapshots", 0,
     PROP_READONLY, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME, "<size>",
     "USEDSNAP");
 zprop_register_number(ZFS_PROP_USEDDS, "usedbydataset", 0,
     PROP_READONLY, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME, "<size>",
     "USEDDS");
 zprop_register_number(ZFS_PROP_USEDCHILD, "usedbychildren", 0,
     PROP_READONLY, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME, "<size>",
     "USEDCHILD");
 zprop_register_number(ZFS_PROP_USEDREFRESERV, "usedbyrefreservation", 0,
     PROP_READONLY,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME, "<size>", "USEDREFRESERV");
 zprop_register_number(ZFS_PROP_USERREFS, "userrefs", 0, PROP_READONLY,
     ZFS_TYPE_SNAPSHOT, "<count>", "USERREFS");
 zprop_register_number(ZFS_PROP_WRITTEN, "written", 0, PROP_READONLY,
     ZFS_TYPE_DATASET, "<size>", "WRITTEN");
 zprop_register_number(ZFS_PROP_LOGICALUSED, "logicalused", 0,
     PROP_READONLY, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME, "<size>",
     "LUSED");
 zprop_register_number(ZFS_PROP_LOGICALREFERENCED, "logicalreferenced",
     0, PROP_READONLY, ZFS_TYPE_DATASET, "<size>", "LREFER");


 zprop_register_number(ZFS_PROP_QUOTA, "quota", 0, PROP_DEFAULT,
     ZFS_TYPE_FILESYSTEM, "<size> | none", "QUOTA");
 zprop_register_number(ZFS_PROP_RESERVATION, "reservation", 0,
     PROP_DEFAULT, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME,
     "<size> | none", "RESERV");
 zprop_register_number(ZFS_PROP_VOLSIZE, "volsize", 0, PROP_DEFAULT,
     ZFS_TYPE_VOLUME, "<size>", "VOLSIZE");
 zprop_register_number(ZFS_PROP_REFQUOTA, "refquota", 0, PROP_DEFAULT,
     ZFS_TYPE_FILESYSTEM, "<size> | none", "REFQUOTA");
 zprop_register_number(ZFS_PROP_REFRESERVATION, "refreservation", 0,
     PROP_DEFAULT, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME,
     "<size> | none", "REFRESERV");
 zprop_register_number(ZFS_PROP_FILESYSTEM_LIMIT, "filesystem_limit",
     UINT64_MAX, PROP_DEFAULT, ZFS_TYPE_FILESYSTEM,
     "<count> | none", "FSLIMIT");
 zprop_register_number(ZFS_PROP_SNAPSHOT_LIMIT, "snapshot_limit",
     UINT64_MAX, PROP_DEFAULT, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME,
     "<count> | none", "SSLIMIT");
 zprop_register_number(ZFS_PROP_FILESYSTEM_COUNT, "filesystem_count",
     UINT64_MAX, PROP_DEFAULT, ZFS_TYPE_FILESYSTEM,
     "<count>", "FSCOUNT");
 zprop_register_number(ZFS_PROP_SNAPSHOT_COUNT, "snapshot_count",
     UINT64_MAX, PROP_DEFAULT, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME,
     "<count>", "SSCOUNT");
 zprop_register_number(ZFS_PROP_GUID, "guid", 0, PROP_READONLY,
     ZFS_TYPE_DATASET | ZFS_TYPE_BOOKMARK, "<uint64>", "GUID");
 zprop_register_number(ZFS_PROP_CREATETXG, "createtxg", 0, PROP_READONLY,
     ZFS_TYPE_DATASET | ZFS_TYPE_BOOKMARK, "<uint64>", "CREATETXG");


 zprop_register_number(ZFS_PROP_RECORDSIZE, "recordsize",
     SPA_OLD_MAXBLOCKSIZE, PROP_INHERIT,
     ZFS_TYPE_FILESYSTEM, "512 to 1M, power of 2", "RECSIZE");


 zprop_register_hidden(ZFS_PROP_REMAPTXG, "remaptxg", PROP_TYPE_NUMBER,
     PROP_READONLY, ZFS_TYPE_DATASET, "REMAPTXG");
 zprop_register_hidden(ZFS_PROP_NUMCLONES, "numclones", PROP_TYPE_NUMBER,
     PROP_READONLY, ZFS_TYPE_SNAPSHOT, "NUMCLONES");
 zprop_register_hidden(ZFS_PROP_NAME, "name", PROP_TYPE_STRING,
     PROP_READONLY, ZFS_TYPE_DATASET | ZFS_TYPE_BOOKMARK, "NAME");
 zprop_register_hidden(ZFS_PROP_ISCSIOPTIONS, "iscsioptions",
     PROP_TYPE_STRING, PROP_INHERIT, ZFS_TYPE_VOLUME, "ISCSIOPTIONS");
 zprop_register_hidden(ZFS_PROP_STMF_SHAREINFO, "stmf_sbd_lu",
     PROP_TYPE_STRING, PROP_INHERIT, ZFS_TYPE_VOLUME,
     "STMF_SBD_LU");
 zprop_register_hidden(ZFS_PROP_USERACCOUNTING, "useraccounting",
     PROP_TYPE_NUMBER, PROP_READONLY, ZFS_TYPE_DATASET,
     "USERACCOUNTING");
 zprop_register_hidden(ZFS_PROP_UNIQUE, "unique", PROP_TYPE_NUMBER,
     PROP_READONLY, ZFS_TYPE_DATASET, "UNIQUE");
 zprop_register_hidden(ZFS_PROP_OBJSETID, "objsetid", PROP_TYPE_NUMBER,
     PROP_READONLY, ZFS_TYPE_DATASET, "OBJSETID");
 zprop_register_hidden(ZFS_PROP_INCONSISTENT, "inconsistent",
     PROP_TYPE_NUMBER, PROP_READONLY, ZFS_TYPE_DATASET, "INCONSISTENT");
 zprop_register_hidden(ZFS_PROP_PREV_SNAP, "prevsnap", PROP_TYPE_STRING,
     PROP_READONLY, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME, "PREVSNAP");


 zprop_register_impl(ZFS_PROP_CREATION, "creation", PROP_TYPE_NUMBER, 0,
     ((void*)0), PROP_READONLY, ZFS_TYPE_DATASET | ZFS_TYPE_BOOKMARK,
     "<date>", "CREATION", B_FALSE, B_TRUE, ((void*)0));
}
