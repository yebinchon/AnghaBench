
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;
struct _citrus_esdb {int dummy; } ;
typedef int path ;
typedef int buf2 ;
typedef int buf1 ;


 int ENOENT ;
 char* ESDB_ALIAS ;
 char* ESDB_DIR ;
 int PATH_MAX ;
 int _LOOKUP_CASE_IGNORE ;
 char* _PATH_ESDB ;
 char* _lookup_alias (char*,char const*,char*,int,int ) ;
 char* _lookup_simple (char*,char const*,char*,int,int ) ;
 int _map_file (struct _region*,char*) ;
 int _unmap_file (struct _region*) ;
 int conv_esdb (struct _citrus_esdb*,struct _region*) ;
 int snprintf (char*,int,char*,char*,char const*) ;

int
_citrus_esdb_open(struct _citrus_esdb *db, const char *esname)
{
 struct _region fr;
 const char *realname, *encfile;
 char buf1[PATH_MAX], buf2[PATH_MAX], path[PATH_MAX];
 int ret;

 snprintf(path, sizeof(path), "%s/%s", _PATH_ESDB, ESDB_ALIAS);
 realname = _lookup_alias(path, esname, buf1, sizeof(buf1),
     _LOOKUP_CASE_IGNORE);

 snprintf(path, sizeof(path), "%s/%s", _PATH_ESDB, ESDB_DIR);
 encfile = _lookup_simple(path, realname, buf2, sizeof(buf2),
     _LOOKUP_CASE_IGNORE);
 if (encfile == ((void*)0))
  return (ENOENT);


 snprintf(path, sizeof(path), "%s/%s", _PATH_ESDB, encfile);
 ret = _map_file(&fr, path);
 if (ret)
  return (ret);

 ret = conv_esdb(db, &fr);

 _unmap_file(&fr);

 return (ret);
}
