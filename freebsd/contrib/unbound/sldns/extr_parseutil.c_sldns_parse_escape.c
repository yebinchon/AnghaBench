
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;


 scalar_t__ isdigit (unsigned char) ;

int
sldns_parse_escape(uint8_t *ch_p, const char** str_p)
{
 uint16_t val;

 if ((*str_p)[0] && isdigit((unsigned char)(*str_p)[0]) &&
     (*str_p)[1] && isdigit((unsigned char)(*str_p)[1]) &&
     (*str_p)[2] && isdigit((unsigned char)(*str_p)[2])) {

  val = (uint16_t)(((*str_p)[0] - '0') * 100 +
     ((*str_p)[1] - '0') * 10 +
     ((*str_p)[2] - '0'));

  if (val > 255) {
   goto error;
  }
  *ch_p = (uint8_t)val;
  *str_p += 3;
  return 1;

 } else if ((*str_p)[0] && !isdigit((unsigned char)(*str_p)[0])) {

  *ch_p = (uint8_t)*(*str_p)++;
  return 1;
 }
error:
 *str_p = ((void*)0);
 return 0;
}
