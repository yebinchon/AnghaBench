
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;

__attribute__((used)) static int
tob64 (unsigned char *inbuf, char *outbuf, int len)
{
  int i, sum;
  char *p;

  if (len % 3 != 0)
    error ("bad length");

  p = outbuf;
  for (i = 0; i < len; i += 3)
    {

      sum = ((long) *inbuf++) << 16;
      sum |= ((long) *inbuf++) << 8;
      sum |= ((long) *inbuf++);


      *p++ = ((sum >> 18) & 0x3f) + '0';
      *p++ = ((sum >> 12) & 0x3f) + '0';
      *p++ = ((sum >> 6) & 0x3f) + '0';
      *p++ = (sum & 0x3f) + '0';
    }
  return (p - outbuf);
}
