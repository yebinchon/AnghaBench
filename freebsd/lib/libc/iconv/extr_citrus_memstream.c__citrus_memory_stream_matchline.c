
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_memory_stream {int dummy; } ;


 int T_COMM ;
 char* _bcs_skip_nonws_len (char const*,size_t*) ;
 char* _bcs_skip_ws_len (char const*,size_t*) ;
 scalar_t__ _bcs_strncasecmp (char const*,char const*,size_t) ;
 int _bcs_trunc_rws_len (char const*,size_t*) ;
 char* _citrus_memory_stream_getln (struct _citrus_memory_stream*,size_t*) ;
 char* memchr (char const*,int ,size_t) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

const char *
_citrus_memory_stream_matchline(struct _citrus_memory_stream * __restrict ms,
    const char * __restrict key, size_t * __restrict rlen, int iscasesensitive)
{
 const char *p, *q;
 size_t keylen, len;

 keylen = strlen(key);
 for(;;) {
  p = _citrus_memory_stream_getln(ms, &len);
  if (p == ((void*)0))
   return (((void*)0));


  q = memchr(p, T_COMM, len);
  if (q) {
   len = q - p;
  }

  _bcs_trunc_rws_len(p, &len);
  if (len == 0)
   continue;


  p = _bcs_skip_ws_len(p, &len);
  q = _bcs_skip_nonws_len(p, &len);

  if ((size_t)(q - p) == keylen) {
   if (iscasesensitive) {
    if (memcmp(key, p, keylen) == 0)
     break;
   } else {
    if (_bcs_strncasecmp(key, p, keylen) == 0)
     break;
   }
  }
 }

 p = _bcs_skip_ws_len(q, &len);
 *rlen = len;

 return (p);
}
