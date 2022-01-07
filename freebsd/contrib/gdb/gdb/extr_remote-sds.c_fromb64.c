
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;

__attribute__((used)) static int
fromb64 (char *inbuf, char *outbuf, int len)
{
  int i, sum;

  if (len % 4 != 0)
    error ("bad length");

  for (i = 0; i < len; i += 4)
    {

      sum = (*inbuf++ - '0') << 18;
      sum |= (*inbuf++ - '0') << 12;
      sum |= (*inbuf++ - '0') << 6;
      sum |= (*inbuf++ - '0');



      *outbuf++ = (sum >> 16) & 0xff;
      *outbuf++ = (sum >> 8) & 0xff;
      *outbuf++ = sum & 0xff;
    }

  return (len / 4) * 3;
}
