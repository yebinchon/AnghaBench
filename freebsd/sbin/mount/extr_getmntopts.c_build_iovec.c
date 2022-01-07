
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int iov_len; void* iov_base; } ;


 struct iovec* realloc (struct iovec*,int) ;
 void* strdup (char const*) ;
 int strlen (void*) ;

void
build_iovec(struct iovec **iov, int *iovlen, const char *name, void *val,
     size_t len)
{
 int i;

 if (*iovlen < 0)
  return;
 i = *iovlen;
 *iov = realloc(*iov, sizeof **iov * (i + 2));
 if (*iov == ((void*)0)) {
  *iovlen = -1;
  return;
 }
 (*iov)[i].iov_base = strdup(name);
 (*iov)[i].iov_len = strlen(name) + 1;
 i++;
 (*iov)[i].iov_base = val;
 if (len == (size_t)-1) {
  if (val != ((void*)0))
   len = strlen(val) + 1;
  else
   len = 0;
 }
 (*iov)[i].iov_len = (int)len;
 *iovlen = ++i;
}
