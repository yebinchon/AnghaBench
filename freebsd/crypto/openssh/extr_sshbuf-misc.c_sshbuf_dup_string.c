
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 size_t SIZE_MAX ;
 char* malloc (size_t) ;
 int * memchr (int const*,char,size_t) ;
 int memcpy (char*,int const*,size_t) ;
 size_t sshbuf_len (struct sshbuf*) ;
 int * sshbuf_ptr (struct sshbuf*) ;

char *
sshbuf_dup_string(struct sshbuf *buf)
{
 const u_char *p = ((void*)0), *s = sshbuf_ptr(buf);
 size_t l = sshbuf_len(buf);
 char *r;

 if (s == ((void*)0) || l > SIZE_MAX)
  return ((void*)0);

 if (l > 0 && (p = memchr(s, '\0', l)) != ((void*)0)) {
  if (p != s + l - 1)
   return ((void*)0);
  l--;
 }
 if ((r = malloc(l + 1)) == ((void*)0))
  return ((void*)0);
 if (l > 0)
  memcpy(r, s, l);
 r[l] = '\0';
 return r;
}
