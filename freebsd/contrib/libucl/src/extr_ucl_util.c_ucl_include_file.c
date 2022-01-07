
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ucl_parser {int err; } ;
struct ucl_include_params {scalar_t__ must_exist; scalar_t__ soft_fail; int allow_glob; } ;
typedef int globbuf ;
struct TYPE_5__ {size_t gl_pathc; scalar_t__* gl_pathv; } ;
typedef TYPE_1__ glob_t ;
typedef int glob_pattern ;


 int PATH_MAX ;
 scalar_t__ glob (char*,int ,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 size_t strlen (scalar_t__) ;
 int ucl_create_err (int *,char*,char*) ;
 int ucl_include_file_single (unsigned char const*,size_t,struct ucl_parser*,struct ucl_include_params*) ;
 int ucl_strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static bool
ucl_include_file (const unsigned char *data, size_t len,
  struct ucl_parser *parser, struct ucl_include_params *params)
{
 const unsigned char *p = data, *end = data + len;
 bool need_glob = 0;
 int cnt = 0;
 char glob_pattern[PATH_MAX];
 size_t i;


 if (!params->allow_glob) {
  return ucl_include_file_single (data, len, parser, params);
 }
 else {

  while (p != end) {
   if (*p == '*' || *p == '?') {
    need_glob = 1;
    break;
   }
   p ++;
  }
  if (need_glob) {
   glob_t globbuf;
   memset (&globbuf, 0, sizeof (globbuf));
   ucl_strlcpy (glob_pattern, (const char *)data,
    (len + 1 < sizeof (glob_pattern) ? len + 1 : sizeof (glob_pattern)));
   if (glob (glob_pattern, 0, ((void*)0), &globbuf) != 0) {
    return (!params->must_exist || 0);
   }
   for (i = 0; i < globbuf.gl_pathc; i ++) {
    if (!ucl_include_file_single ((unsigned char *)globbuf.gl_pathv[i],
      strlen (globbuf.gl_pathv[i]), parser, params)) {
     if (params->soft_fail) {
      continue;
     }
     globfree (&globbuf);
     return 0;
    }
    cnt ++;
   }
   globfree (&globbuf);

   if (cnt == 0 && params->must_exist) {
    ucl_create_err (&parser->err, "cannot match any files for pattern %s",
     glob_pattern);
    return 0;
   }
  }
  else {
   return ucl_include_file_single (data, len, parser, params);
  }
 }






 return 1;
}
