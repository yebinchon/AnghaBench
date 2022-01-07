
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 scalar_t__ errno ;
 char* getcwd (char*,size_t) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_memcpy (char*,char const*,size_t) ;
 char* os_strdup (char const*) ;
 size_t os_strlen (char const*) ;

char * os_rel2abs_path(const char *rel_path)
{
 char *buf = ((void*)0), *cwd, *ret;
 size_t len = 128, cwd_len, rel_len, ret_len;

 if (rel_path[0] == '/')
  return os_strdup(rel_path);

 for (;;) {
  buf = os_malloc(len);
  if (buf == ((void*)0))
   return ((void*)0);
  cwd = getcwd(buf, len);
  if (cwd == ((void*)0)) {
   os_free(buf);
   if (errno != ERANGE) {
    return ((void*)0);
   }
   len *= 2;
  } else {
   break;
  }
 }

 cwd_len = os_strlen(cwd);
 rel_len = os_strlen(rel_path);
 ret_len = cwd_len + 1 + rel_len + 1;
 ret = os_malloc(ret_len);
 if (ret) {
  os_memcpy(ret, cwd, cwd_len);
  ret[cwd_len] = '/';
  os_memcpy(ret + cwd_len + 1, rel_path, rel_len);
  ret[ret_len - 1] = '\0';
 }
 os_free(buf);
 return ret;
}
