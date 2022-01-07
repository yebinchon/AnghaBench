
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct packet {int options_valid; TYPE_1__* options; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {unsigned char* data; int len; } ;


 unsigned char DHO_END ;
 int DHO_PAD ;
 scalar_t__ bad_options ;
 scalar_t__ bad_options_max ;
 unsigned char* calloc (int,int) ;
 TYPE_2__* dhcp_options ;
 int error (char*,int ) ;
 int free (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int warning (char*,...) ;

void
parse_option_buffer(struct packet *packet,
    unsigned char *buffer, int length)
{
 unsigned char *s, *t, *end = buffer + length;
 int len, code;

 for (s = buffer; *s != DHO_END && s < end; ) {
  code = s[0];


  if (code == DHO_PAD) {
   s++;
   continue;
  }
  if (s + 2 > end) {
   len = 65536;
   goto bogus;
  }





  len = s[1];
  if (s + len + 2 > end) {
      bogus:
   bad_options++;
   warning("option %s (%d) %s.",
       dhcp_options[code].name, len,
       "larger than buffer");
   if (bad_options == bad_options_max) {
    packet->options_valid = 1;
    bad_options = 0;
    warning("Many bogus options seen in offers. "
        "Taking this offer in spite of bogus "
        "options - hope for the best!");
   } else {
    warning("rejecting bogus offer.");
    packet->options_valid = 0;
   }
   return;
  }




  if (!packet->options[code].data) {
   if (!(t = calloc(1, len + 1)))
    error("Can't allocate storage for option %s.",
        dhcp_options[code].name);




   memcpy(t, &s[2], len);
   t[len] = 0;
   packet->options[code].len = len;
   packet->options[code].data = t;
  } else {





   t = calloc(1, len + packet->options[code].len + 1);
   if (!t)
    error("Can't expand storage for option %s.",
        dhcp_options[code].name);
   memcpy(t, packet->options[code].data,
    packet->options[code].len);
   memcpy(t + packet->options[code].len,
    &s[2], len);
   packet->options[code].len += len;
   t[packet->options[code].len] = 0;
   free(packet->options[code].data);
   packet->options[code].data = t;
  }
  s += len + 2;
 }
 packet->options_valid = 1;
}
