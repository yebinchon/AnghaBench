
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
 int isc_region_consume (TYPE_1__*,int) ;
 int memset (char*,int ,int) ;
 int str_totext (char const*,int *) ;

__attribute__((used)) static isc_result_t
base32_totext(isc_region_t *source, int wordlength, const char *wordbreak,
       isc_buffer_t *target, const char base[])
{
 char buf[9];
 unsigned int loops = 0;

 if (wordlength >= 0 && wordlength < 8)
  wordlength = 8;

 memset(buf, 0, sizeof(buf));
 while (source->length > 0) {
  buf[0] = base[((source->base[0]>>3)&0x1f)];
  if (source->length == 1) {
   buf[1] = base[(source->base[0]<<2)&0x1c];
   buf[2] = buf[3] = buf[4] = '=';
   buf[5] = buf[6] = buf[7] = '=';
   RETERR(str_totext(buf, target));
   break;
  }
  buf[1] = base[((source->base[0]<<2)&0x1c)|
         ((source->base[1]>>6)&0x03)];
  buf[2] = base[((source->base[1]>>1)&0x1f)];
  if (source->length == 2) {
   buf[3] = base[(source->base[1]<<4)&0x10];
   buf[4] = buf[5] = buf[6] = buf[7] = '=';
   RETERR(str_totext(buf, target));
   break;
  }
  buf[3] = base[((source->base[1]<<4)&0x10)|
         ((source->base[2]>>4)&0x0f)];
  if (source->length == 3) {
   buf[4] = base[(source->base[2]<<1)&0x1e];
   buf[5] = buf[6] = buf[7] = '=';
   RETERR(str_totext(buf, target));
   break;
  }
  buf[4] = base[((source->base[2]<<1)&0x1e)|
         ((source->base[3]>>7)&0x01)];
  buf[5] = base[((source->base[3]>>2)&0x1f)];
  if (source->length == 4) {
   buf[6] = base[(source->base[3]<<3)&0x18];
   buf[7] = '=';
   RETERR(str_totext(buf, target));
   break;
  }
  buf[6] = base[((source->base[3]<<3)&0x18)|
         ((source->base[4]>>5)&0x07)];
  buf[7] = base[source->base[4]&0x1f];
  RETERR(str_totext(buf, target));
  isc_region_consume(source, 5);

  loops++;
  if (source->length != 0 && wordlength >= 0 &&
      (int)((loops + 1) * 8) >= wordlength)
  {
   loops = 0;
   RETERR(str_totext(wordbreak, target));
  }
 }
 if (source->length > 0)
  isc_region_consume(source, source->length);
 return (ISC_R_SUCCESS);
}
