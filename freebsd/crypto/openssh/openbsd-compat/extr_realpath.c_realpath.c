
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symlink ;
struct stat {int st_mode; } ;
typedef int ptrdiff_t ;
typedef int next_token ;
typedef int left ;


 int ELOOP ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int PATH_MAX ;
 int SYMLOOP_MAX ;
 scalar_t__ S_ISLNK (int ) ;
 int errno ;
 int free (char*) ;
 int * getcwd (char*,int) ;
 scalar_t__ lstat (char*,struct stat*) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,size_t) ;
 int readlink (char*,char*,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlcat (char*,char*,int) ;
 size_t strlcpy (char*,char const*,int) ;
 size_t strlen (char*) ;
 char* strrchr (char*,char) ;

char *
realpath(const char *path, char *resolved)
{
 struct stat sb;
 char *p, *q, *s;
 size_t left_len, resolved_len;
 unsigned symlinks;
 int serrno, slen, mem_allocated;
 char left[PATH_MAX], next_token[PATH_MAX], symlink[PATH_MAX];

 if (path[0] == '\0') {
  errno = ENOENT;
  return (((void*)0));
 }

 serrno = errno;

 if (resolved == ((void*)0)) {
  resolved = malloc(PATH_MAX);
  if (resolved == ((void*)0))
   return (((void*)0));
  mem_allocated = 1;
 } else
  mem_allocated = 0;

 symlinks = 0;
 if (path[0] == '/') {
  resolved[0] = '/';
  resolved[1] = '\0';
  if (path[1] == '\0')
   return (resolved);
  resolved_len = 1;
  left_len = strlcpy(left, path + 1, sizeof(left));
 } else {
  if (getcwd(resolved, PATH_MAX) == ((void*)0)) {
   if (mem_allocated)
    free(resolved);
   else
    strlcpy(resolved, ".", PATH_MAX);
   return (((void*)0));
  }
  resolved_len = strlen(resolved);
  left_len = strlcpy(left, path, sizeof(left));
 }
 if (left_len >= sizeof(left) || resolved_len >= PATH_MAX) {
  errno = ENAMETOOLONG;
  goto err;
 }




 while (left_len != 0) {




  p = strchr(left, '/');
  s = p ? p : left + left_len;
  if (s - left >= (ptrdiff_t)sizeof(next_token)) {
   errno = ENAMETOOLONG;
   goto err;
  }
  memcpy(next_token, left, s - left);
  next_token[s - left] = '\0';
  left_len -= s - left;
  if (p != ((void*)0))
   memmove(left, s + 1, left_len + 1);
  if (resolved[resolved_len - 1] != '/') {
   if (resolved_len + 1 >= PATH_MAX) {
    errno = ENAMETOOLONG;
    goto err;
   }
   resolved[resolved_len++] = '/';
   resolved[resolved_len] = '\0';
  }
  if (next_token[0] == '\0')
   continue;
  else if (strcmp(next_token, ".") == 0)
   continue;
  else if (strcmp(next_token, "..") == 0) {




   if (resolved_len > 1) {
    resolved[resolved_len - 1] = '\0';
    q = strrchr(resolved, '/') + 1;
    *q = '\0';
    resolved_len = q - resolved;
   }
   continue;
  }






  resolved_len = strlcat(resolved, next_token, PATH_MAX);
  if (resolved_len >= PATH_MAX) {
   errno = ENAMETOOLONG;
   goto err;
  }
  if (lstat(resolved, &sb) != 0) {
   if (errno == ENOENT && p == ((void*)0)) {
    errno = serrno;
    return (resolved);
   }
   goto err;
  }
  if (S_ISLNK(sb.st_mode)) {
   if (symlinks++ > SYMLOOP_MAX) {
    errno = ELOOP;
    goto err;
   }
   slen = readlink(resolved, symlink, sizeof(symlink) - 1);
   if (slen < 0)
    goto err;
   symlink[slen] = '\0';
   if (symlink[0] == '/') {
    resolved[1] = 0;
    resolved_len = 1;
   } else if (resolved_len > 1) {

    resolved[resolved_len - 1] = '\0';
    q = strrchr(resolved, '/') + 1;
    *q = '\0';
    resolved_len = q - resolved;
   }






   if (p != ((void*)0)) {
    if (symlink[slen - 1] != '/') {
     if (slen + 1 >=
         (ptrdiff_t)sizeof(symlink)) {
      errno = ENAMETOOLONG;
      goto err;
     }
     symlink[slen] = '/';
     symlink[slen + 1] = 0;
    }
    left_len = strlcat(symlink, left, sizeof(symlink));
    if (left_len >= sizeof(symlink)) {
     errno = ENAMETOOLONG;
     goto err;
    }
   }
   left_len = strlcpy(left, symlink, sizeof(left));
  }
 }





 if (resolved_len > 1 && resolved[resolved_len - 1] == '/')
  resolved[resolved_len - 1] = '\0';
 return (resolved);

err:
 if (mem_allocated)
  free(resolved);
 return (((void*)0));
}
