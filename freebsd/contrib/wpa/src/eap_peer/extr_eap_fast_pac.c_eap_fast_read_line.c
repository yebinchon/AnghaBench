
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_fast_read_ctx {char* buf; size_t buf_len; char const* pos; char const* end; scalar_t__ f; int line; } ;


 int * fgets (char*,size_t,scalar_t__) ;
 int os_memcpy (char*,char const*,size_t) ;
 char* os_strchr (char*,char) ;

__attribute__((used)) static int eap_fast_read_line(struct eap_fast_read_ctx *rc, char **value)
{
 char *pos;

 rc->line++;
 if (rc->f) {
  if (fgets(rc->buf, rc->buf_len, rc->f) == ((void*)0))
   return -1;
 } else {
  const char *l_end;
  size_t len;
  if (rc->pos >= rc->end)
   return -1;
  l_end = rc->pos;
  while (l_end < rc->end && *l_end != '\n')
   l_end++;
  len = l_end - rc->pos;
  if (len >= rc->buf_len)
   len = rc->buf_len - 1;
  os_memcpy(rc->buf, rc->pos, len);
  rc->buf[len] = '\0';
  rc->pos = l_end + 1;
 }

 rc->buf[rc->buf_len - 1] = '\0';
 pos = rc->buf;
 while (*pos != '\0') {
  if (*pos == '\n' || *pos == '\r') {
   *pos = '\0';
   break;
  }
  pos++;
 }

 pos = os_strchr(rc->buf, '=');
 if (pos)
  *pos++ = '\0';
 *value = pos;

 return 0;
}
