
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
typedef char uint32_t ;
struct TYPE_2__ {void* depth; void* mf; void* nice_len; void* mode; void* pb; void* lp; void* lc; void* dict_size; } ;
typedef TYPE_1__ lzma_options_lzma ;


 char LZMA_PRESET_EXTREME ;
 int error_lzma_preset (char const*) ;
 int lzma_lzma_preset (void*,char) ;

__attribute__((used)) static void
set_lzma(void *options, unsigned key, uint64_t value, const char *valuestr)
{
 lzma_options_lzma *opt = options;

 switch (key) {
 case 128: {
  if (valuestr[0] < '0' || valuestr[0] > '9')
   error_lzma_preset(valuestr);

  uint32_t preset = valuestr[0] - '0';



  if (valuestr[1] != '\0') {
   if (valuestr[1] == 'e')
    preset |= LZMA_PRESET_EXTREME;
   else
    error_lzma_preset(valuestr);

   if (valuestr[2] != '\0')
    error_lzma_preset(valuestr);
  }

  if (lzma_lzma_preset(options, preset))
   error_lzma_preset(valuestr);

  break;
 }

 case 135:
  opt->dict_size = value;
  break;

 case 134:
  opt->lc = value;
  break;

 case 133:
  opt->lp = value;
  break;

 case 129:
  opt->pb = value;
  break;

 case 131:
  opt->mode = value;
  break;

 case 130:
  opt->nice_len = value;
  break;

 case 132:
  opt->mf = value;
  break;

 case 136:
  opt->depth = value;
  break;
 }
}
