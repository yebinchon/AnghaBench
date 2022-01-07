
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;
struct _memstream {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int PATH_MAX ;
 char* _CITRUS_MAPPER_DIR ;
 char* _bcs_skip_nonws_len (char const*,size_t*) ;
 char* _bcs_skip_ws_len (char const*,size_t*) ;
 int _map_file (struct _region*,char*) ;
 int _memstream_bind (struct _memstream*,struct _region*) ;
 char* _memstream_matchline (struct _memstream*,char const*,size_t*,int ) ;
 int _unmap_file (struct _region*) ;
 int snprintf (char*,size_t,char*,char const*,char*) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static int
lookup_mapper_entry(const char *dir, const char *mapname, void *linebuf,
    size_t linebufsize, const char **module, const char **variable)
{
 struct _region r;
 struct _memstream ms;
 const char *cp, *cq;
 char *p;
 char path[PATH_MAX];
 size_t len;
 int ret;


 snprintf(path, (size_t)PATH_MAX, "%s/%s", dir, _CITRUS_MAPPER_DIR);


 ret = _map_file(&r, path);
 if (ret)
  return (ret);

 _memstream_bind(&ms, &r);


 cp = _memstream_matchline(&ms, mapname, &len, 0);
 if (!cp) {
  ret = ENOENT;
  goto quit;
 }
 if (!len || len > linebufsize - 1) {
  ret = EINVAL;
  goto quit;
 }

 p = linebuf;

 *module = p;
 cq = _bcs_skip_nonws_len(cp, &len);
 strlcpy(p, cp, (size_t)(cq - cp + 1));
 p += cq - cp + 1;


 *variable = p;
 cp = _bcs_skip_ws_len(cq, &len);
 strlcpy(p, cp, len + 1);

 ret = 0;

quit:
 _unmap_file(&r);
 return (ret);
}
