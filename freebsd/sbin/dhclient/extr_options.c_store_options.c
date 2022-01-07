
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_cache {int len; scalar_t__ value; } ;
typedef int option_stored ;
struct TYPE_2__ {char* format; } ;


 TYPE_1__* dhcp_options ;
 int memcpy (unsigned char*,scalar_t__,unsigned char) ;
 int memset (int*,int ,int) ;

unsigned
store_options(unsigned char *buffer, int buflen, struct tree_cache **options,
    unsigned char *priority_list, int priority_len, int first_cutoff,
    int second_cutoff, int terminate)
{
 int bufix = 0, option_stored[256], i, ix, tto;


 memset(option_stored, 0, sizeof(option_stored));





 for (i = 0; i < priority_len; i++) {

  int code = priority_list[i];
  int optstart;





  int length;


  if (!options[code]) {
   continue;
  }





  if (option_stored[code])
   continue;
  option_stored[code] = 1;


  length = options[code]->len;


  if (terminate && dhcp_options[code].format[0] == 't') {
   length++;
   tto = 1;
  } else
   tto = 0;
  ix = 0;

  optstart = bufix;
  while (length) {
   unsigned char incr = length > 255 ? 255 : length;






   if (bufix < first_cutoff &&
       bufix + incr > first_cutoff)
    incr = first_cutoff - bufix;
   else if (bufix < second_cutoff &&
       bufix + incr > second_cutoff)
    incr = second_cutoff - bufix;





   if (bufix + 2 + incr > buflen) {
    bufix = optstart;
    break;
   }


   buffer[bufix] = code;
   buffer[bufix + 1] = incr;
   if (tto && incr == length) {
    memcpy(buffer + bufix + 2,
        options[code]->value + ix, incr - 1);
    buffer[bufix + 2 + incr - 1] = 0;
   } else
    memcpy(buffer + bufix + 2,
        options[code]->value + ix, incr);
   length -= incr;
   ix += incr;
   bufix += 2 + incr;
  }
 }
 return (bufix);
}
