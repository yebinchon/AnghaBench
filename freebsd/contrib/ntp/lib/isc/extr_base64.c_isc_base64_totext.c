
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_4__ {int length; int* base; } ;
typedef TYPE_1__ isc_region_t ;
typedef int isc_buffer_t ;
typedef int buf ;


 int ISC_R_SUCCESS ;
 int RETERR (int ) ;
 char* base64 ;
 int isc_region_consume (TYPE_1__*,int) ;
 int memset (char*,int ,int) ;
 int str_totext (char const*,int *) ;

isc_result_t
isc_base64_totext(isc_region_t *source, int wordlength,
    const char *wordbreak, isc_buffer_t *target)
{
 char buf[5];
 unsigned int loops = 0;

 if (wordlength < 4)
  wordlength = 4;

 memset(buf, 0, sizeof(buf));
 while (source->length > 2) {
  buf[0] = base64[(source->base[0]>>2)&0x3f];
  buf[1] = base64[((source->base[0]<<4)&0x30)|
    ((source->base[1]>>4)&0x0f)];
  buf[2] = base64[((source->base[1]<<2)&0x3c)|
    ((source->base[2]>>6)&0x03)];
  buf[3] = base64[source->base[2]&0x3f];
  RETERR(str_totext(buf, target));
  isc_region_consume(source, 3);

  loops++;
  if (source->length != 0 &&
      (int)((loops + 1) * 4) >= wordlength)
  {
   loops = 0;
   RETERR(str_totext(wordbreak, target));
  }
 }
 if (source->length == 2) {
  buf[0] = base64[(source->base[0]>>2)&0x3f];
  buf[1] = base64[((source->base[0]<<4)&0x30)|
    ((source->base[1]>>4)&0x0f)];
  buf[2] = base64[((source->base[1]<<2)&0x3c)];
  buf[3] = '=';
  RETERR(str_totext(buf, target));
  isc_region_consume(source, 2);
 } else if (source->length == 1) {
  buf[0] = base64[(source->base[0]>>2)&0x3f];
  buf[1] = base64[((source->base[0]<<4)&0x30)];
  buf[2] = buf[3] = '=';
  RETERR(str_totext(buf, target));
  isc_region_consume(source, 1);
 }
 return (ISC_R_SUCCESS);
}
