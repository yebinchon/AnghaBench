
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int base64_table ;


 int os_free (unsigned char*) ;
 unsigned char* os_malloc (size_t) ;
 int os_memset (unsigned char*,int,int) ;

__attribute__((used)) static unsigned char * base64_gen_decode(const unsigned char *src, size_t len,
      size_t *out_len,
      const unsigned char *table)
{
 unsigned char dtable[256], *out, *pos, block[4], tmp;
 size_t i, count, olen;
 int pad = 0;
 size_t extra_pad;

 os_memset(dtable, 0x80, 256);
 for (i = 0; i < sizeof(base64_table) - 1; i++)
  dtable[table[i]] = (unsigned char) i;
 dtable['='] = 0;

 count = 0;
 for (i = 0; i < len; i++) {
  if (dtable[src[i]] != 0x80)
   count++;
 }

 if (count == 0)
  return ((void*)0);
 extra_pad = (4 - count % 4) % 4;

 olen = (count + extra_pad) / 4 * 3;
 pos = out = os_malloc(olen);
 if (out == ((void*)0))
  return ((void*)0);

 count = 0;
 for (i = 0; i < len + extra_pad; i++) {
  unsigned char val;

  if (i >= len)
   val = '=';
  else
   val = src[i];
  tmp = dtable[val];
  if (tmp == 0x80)
   continue;

  if (val == '=')
   pad++;
  block[count] = tmp;
  count++;
  if (count == 4) {
   *pos++ = (block[0] << 2) | (block[1] >> 4);
   *pos++ = (block[1] << 4) | (block[2] >> 2);
   *pos++ = (block[2] << 6) | block[3];
   count = 0;
   if (pad) {
    if (pad == 1)
     pos--;
    else if (pad == 2)
     pos -= 2;
    else {

     os_free(out);
     return ((void*)0);
    }
    break;
   }
  }
 }

 *out_len = pos - out;
 return out;
}
