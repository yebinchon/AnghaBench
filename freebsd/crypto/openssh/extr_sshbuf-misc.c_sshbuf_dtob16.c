
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int SIZE_MAX ;
 char* malloc (size_t) ;
 size_t sshbuf_len (struct sshbuf*) ;
 int* sshbuf_ptr (struct sshbuf*) ;
 char* strdup (char*) ;

char *
sshbuf_dtob16(struct sshbuf *buf)
{
 size_t i, j, len = sshbuf_len(buf);
 const u_char *p = sshbuf_ptr(buf);
 char *ret;
 const char hex[] = "0123456789abcdef";

 if (len == 0)
  return strdup("");
 if (SIZE_MAX / 2 <= len || (ret = malloc(len * 2 + 1)) == ((void*)0))
  return ((void*)0);
 for (i = j = 0; i < len; i++) {
  ret[j++] = hex[(p[i] >> 4) & 0xf];
  ret[j++] = hex[p[i] & 0xf];
 }
 ret[j] = '\0';
 return ret;
}
