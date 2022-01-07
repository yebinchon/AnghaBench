
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uint8_t ;
struct sbuf {int dummy; } ;


 int sbuf_printf (struct sbuf*,char*,...) ;
 int strlen (char*) ;

void
smp_command_decode(uint8_t *smp_request, int request_len, struct sbuf *sb,
     char *line_prefix, int first_line_len, int line_len)
{
 int i, cur_len;

 for (i = 0, cur_len = first_line_len; i < request_len; i++) {
  if ((cur_len < 6)
   && (line_len < (strlen(line_prefix) + 3))) {
   sbuf_printf(sb, "...");
   return;
  }
  if (cur_len < 3) {
   sbuf_printf(sb, "\n%s", line_prefix);
   cur_len = line_len - strlen(line_prefix);
  }
  sbuf_printf(sb, "%02x ", smp_request[i]);
  cur_len = cur_len - 3;
 }
}
