
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int ldns_buffer ;


 scalar_t__ isprint (int) ;
 int ldns_buffer_printf (int *,char*,unsigned int) ;

__attribute__((used)) static void
ldns_characters2buffer_str(ldns_buffer* output,
  size_t amount, const uint8_t* characters)
{
 uint8_t ch;
 while (amount > 0) {
  ch = *characters++;
  if (isprint((int)ch) || ch == '\t') {
   if (ch == '\"' || ch == '\\')
    ldns_buffer_printf(output, "\\%c", ch);
   else
    ldns_buffer_printf(output, "%c", ch);
  } else {
   ldns_buffer_printf(output, "\\%03u",
                                (unsigned)(uint8_t) ch);
  }
  amount--;
 }
}
