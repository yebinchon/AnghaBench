
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int WIND_ERR_OVERRUN ;
 int _wind_combining_class (int const) ;
 int find_composition (int *,int) ;

__attribute__((used)) static int
combine(const uint32_t *in, size_t in_len,
 uint32_t *out, size_t *out_len)
{
    unsigned i;
    int ostarter;
    unsigned o = 0;
    int old_cc;

    for (i = 0; i < in_len;) {
 while (i < in_len && _wind_combining_class(in[i]) != 0) {
     out[o++] = in[i++];
 }
 if (i < in_len) {
     if (o >= *out_len)
  return WIND_ERR_OVERRUN;
     ostarter = o;
     out[o++] = in[i++];
     old_cc = -1;

     while (i < in_len) {
  uint32_t comb;
  uint32_t v[2];
  int cc;

  v[0] = out[ostarter];
  v[1] = in[i];

  cc = _wind_combining_class(in[i]);
  if (old_cc != cc && (comb = find_composition(v, 2))) {
      out[ostarter] = comb;
  } else if (cc == 0) {
      break;
  } else {
      if (o >= *out_len)
   return WIND_ERR_OVERRUN;
      out[o++] = in[i];
      old_cc = cc;
  }
  ++i;
     }
 }
    }
    *out_len = o;
    return 0;
}
