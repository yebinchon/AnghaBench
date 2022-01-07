
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int errno ;
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
 int last_errno;

 if (!rel_path)
  return ((void*)0);

 if (rel_path[0] == '/')
  return os_strdup(rel_path);

 for (;;) {
  buf = os_malloc(len);
  if (buf == ((void*)0))
   return ((void*)0);
  cwd = getcwd(buf, len);
  if (cwd == ((void*)0)) {
   last_errno = errno;
   os_free(buf);
   if (last_errno != ERANGE)
    return ((void*)0);
   len *= 2;
   if (len > 2000)
    return ((void*)0);
  } else {
   buf[len - 1] = '\0';
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
