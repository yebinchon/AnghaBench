
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENAMETOOLONG ;
 int M_CLOUDABI_PATH ;
 int M_WAITOK ;
 size_t PATH_MAX ;
 int copyin (char const*,char*,size_t) ;
 int free (char*,int ) ;
 char* malloc (size_t,int ,int ) ;
 int * memchr (char*,char,size_t) ;

__attribute__((used)) static int
copyin_path(const char *uaddr, size_t len, char **result)
{
 char *buf;
 int error;

 if (len >= PATH_MAX)
  return (ENAMETOOLONG);
 buf = malloc(len + 1, M_CLOUDABI_PATH, M_WAITOK);
 error = copyin(uaddr, buf, len);
 if (error != 0) {
  free(buf, M_CLOUDABI_PATH);
  return (error);
 }
 if (memchr(buf, '\0', len) != ((void*)0)) {
  free(buf, M_CLOUDABI_PATH);
  return (EINVAL);
 }
 buf[len] = '\0';
 *result = buf;
 return (0);
}
