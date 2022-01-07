
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_4__ {scalar_t__ length; int* base; } ;
typedef TYPE_1__ isc_region_t ;
typedef int isc_buffer_t ;
typedef int buf ;


 int ISC_R_SUCCESS ;
 int RETERR (int ) ;
 char* hex ;
 int isc_region_consume (TYPE_1__*,int) ;
 int memset (char*,int ,int) ;
 int str_totext (char const*,int *) ;

isc_result_t
isc_hex_totext(isc_region_t *source, int wordlength,
        const char *wordbreak, isc_buffer_t *target)
{
 char buf[3];
 unsigned int loops = 0;

 if (wordlength < 2)
  wordlength = 2;

 memset(buf, 0, sizeof(buf));
 while (source->length > 0) {
  buf[0] = hex[(source->base[0] >> 4) & 0xf];
  buf[1] = hex[(source->base[0]) & 0xf];
  RETERR(str_totext(buf, target));
  isc_region_consume(source, 1);

  loops++;
  if (source->length != 0 &&
      (int)((loops + 1) * 2) >= wordlength)
  {
   loops = 0;
   RETERR(str_totext(wordbreak, target));
  }
 }
 return (ISC_R_SUCCESS);
}
