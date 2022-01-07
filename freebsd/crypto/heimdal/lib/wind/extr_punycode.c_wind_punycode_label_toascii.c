
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int WIND_ERR_OVERRUN ;
 unsigned int adapt (unsigned int,unsigned int,int) ;
 unsigned int base ;
 char digit (unsigned int) ;
 unsigned int initial_bias ;
 unsigned int initial_n ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,unsigned int) ;
 unsigned int t_max ;
 unsigned int t_min ;

int
wind_punycode_label_toascii(const uint32_t *in, size_t in_len,
       char *out, size_t *out_len)
{
    unsigned n = initial_n;
    unsigned delta = 0;
    unsigned bias = initial_bias;
    unsigned h = 0;
    unsigned b;
    unsigned i;
    unsigned o = 0;
    unsigned m;

    for (i = 0; i < in_len; ++i) {
 if (in[i] < 0x80) {
     ++h;
     if (o >= *out_len)
  return WIND_ERR_OVERRUN;
     out[o++] = in[i];
 }
    }
    b = h;
    if (b > 0) {
 if (o >= *out_len)
     return WIND_ERR_OVERRUN;
 out[o++] = 0x2D;
    }

    if (h < in_len) {
 if (o + 4 >= *out_len)
     return WIND_ERR_OVERRUN;
 memmove(out + 4, out, o);
 memcpy(out, "xn--", 4);
 o += 4;
    }

    while (h < in_len) {
 m = (unsigned)-1;
 for (i = 0; i < in_len; ++i)
     if(in[i] < m && in[i] >= n)
  m = in[i];

 delta += (m - n) * (h + 1);
 n = m;
 for (i = 0; i < in_len; ++i) {
     if (in[i] < n) {
  ++delta;
     } else if (in[i] == n) {
  unsigned q = delta;
  unsigned k;
  for (k = base; ; k += base) {
      unsigned t;
      if (k <= bias)
   t = t_min;
      else if (k >= bias + t_max)
   t = t_max;
      else
   t = k - bias;
      if (q < t)
   break;
      if (o >= *out_len)
   return WIND_ERR_OVERRUN;
      out[o++] = digit(t + ((q - t) % (base - t)));
      q = (q - t) / (base - t);
  }
  if (o >= *out_len)
      return WIND_ERR_OVERRUN;
  out[o++] = digit(q);

  bias = adapt(delta, h + 1, h == b);
  delta = 0;
  ++h;
     }
 }
 ++delta;
 ++n;
    }

    *out_len = o;
    return 0;
}
