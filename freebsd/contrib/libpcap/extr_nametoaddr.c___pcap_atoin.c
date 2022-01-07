
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int bpf_u_int32 ;



int
__pcap_atoin(const char *s, bpf_u_int32 *addr)
{
 u_int n;
 int len;

 *addr = 0;
 len = 0;
 for (;;) {
  n = 0;
  while (*s && *s != '.')
   n = n * 10 + *s++ - '0';
  *addr <<= 8;
  *addr |= n & 0xff;
  len += 8;
  if (*s == '\0')
   return len;
  ++s;
 }

}
