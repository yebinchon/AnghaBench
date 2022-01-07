
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symlink ;
struct stat {int st_mode; } ;
typedef size_t ssize_t ;
typedef int left ;


 int ELOOP ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOTDIR ;
 int MAXSYMLINKS ;
 int PATH_MAX ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int errno ;
 int * getcwd (char*,int) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int memcpy (char*,char*,size_t) ;
 int memmove (char*,char*,size_t) ;
 size_t readlink (char*,char*,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlcat (char*,char*,int) ;
 size_t strlcpy (char*,char const*,int) ;
 size_t strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *
realpath1(const char *path, char *resolved)
{
 struct stat sb;
 char *p, *q;
 size_t left_len, resolved_len, next_token_len;
 unsigned symlinks;
 ssize_t slen;
 char left[PATH_MAX], next_token[PATH_MAX], symlink[PATH_MAX];

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
   resolved[0] = '.';
   resolved[1] = '\0';
   return (((void*)0));
  }
  resolved_len = strlen(resolved);
  left_len = strlcpy(left, path, sizeof(left));
 }
 if (left_len >= sizeof(left) || resolved_len >= PATH_MAX) {
  errno = ENAMETOOLONG;
  return (((void*)0));
 }




 while (left_len != 0) {




  p = strchr(left, '/');

  next_token_len = p != ((void*)0) ? (size_t)(p - left) : left_len;
  memcpy(next_token, left, next_token_len);
  next_token[next_token_len] = '\0';

  if (p != ((void*)0)) {
   left_len -= next_token_len + 1;
   memmove(left, p + 1, left_len + 1);
  } else {
   left[0] = '\0';
   left_len = 0;
  }

  if (resolved[resolved_len - 1] != '/') {
   if (resolved_len + 1 >= PATH_MAX) {
    errno = ENAMETOOLONG;
    return (((void*)0));
   }
   resolved[resolved_len++] = '/';
   resolved[resolved_len] = '\0';
  }
  if (next_token[0] == '\0') {

   continue;
  } else if (strcmp(next_token, ".") == 0) {
   continue;
  } else if (strcmp(next_token, "..") == 0) {




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
   return (((void*)0));
  }
  if (lstat(resolved, &sb) != 0)
   return (((void*)0));
  if (S_ISLNK(sb.st_mode)) {
   if (symlinks++ > MAXSYMLINKS) {
    errno = ELOOP;
    return (((void*)0));
   }
   slen = readlink(resolved, symlink, sizeof(symlink));
   if (slen <= 0 || slen >= (ssize_t)sizeof(symlink)) {
    if (slen < 0)
     ;
    else if (slen == 0)
     errno = ENOENT;
    else
     errno = ENAMETOOLONG;
    return (((void*)0));
   }
   symlink[slen] = '\0';
   if (symlink[0] == '/') {
    resolved[1] = 0;
    resolved_len = 1;
   } else {

    q = strrchr(resolved, '/') + 1;
    *q = '\0';
    resolved_len = q - resolved;
   }






   if (p != ((void*)0)) {
    if (symlink[slen - 1] != '/') {
     if (slen + 1 >= (ssize_t)sizeof(symlink)) {
      errno = ENAMETOOLONG;
      return (((void*)0));
     }
     symlink[slen] = '/';
     symlink[slen + 1] = 0;
    }
    left_len = strlcat(symlink, left,
        sizeof(symlink));
    if (left_len >= sizeof(symlink)) {
     errno = ENAMETOOLONG;
     return (((void*)0));
    }
   }
   left_len = strlcpy(left, symlink, sizeof(left));
  } else if (!S_ISDIR(sb.st_mode) && p != ((void*)0)) {
   errno = ENOTDIR;
   return (((void*)0));
  }
 }





 if (resolved_len > 1 && resolved[resolved_len - 1] == '/')
  resolved[resolved_len - 1] = '\0';
 return (resolved);
}
