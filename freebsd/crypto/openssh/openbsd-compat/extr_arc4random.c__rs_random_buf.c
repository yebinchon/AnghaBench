
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 size_t MIN (size_t,scalar_t__) ;
 scalar_t__ RSBUFSZ ;
 int _rs_rekey (int *,int ) ;
 int _rs_stir_if_needed (size_t) ;
 int memcpy (int *,scalar_t__,size_t) ;
 int memset (scalar_t__,int ,size_t) ;
 scalar_t__ rs_buf ;
 scalar_t__ rs_have ;

__attribute__((used)) static inline void
_rs_random_buf(void *_buf, size_t n)
{
 u_char *buf = (u_char *)_buf;
 size_t m;

 _rs_stir_if_needed(n);
 while (n > 0) {
  if (rs_have > 0) {
   m = MIN(n, rs_have);
   memcpy(buf, rs_buf + RSBUFSZ - rs_have, m);
   memset(rs_buf + RSBUFSZ - rs_have, 0, m);
   buf += m;
   n -= m;
   rs_have -= m;
  }
  if (rs_have == 0)
   _rs_rekey(((void*)0), 0);
 }
}
