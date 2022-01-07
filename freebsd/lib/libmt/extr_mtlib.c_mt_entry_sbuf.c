
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct sbuf {int dummy; } ;
struct mt_status_entry {int var_type; int value; int value_unsigned; int value_signed; } ;
typedef int intmax_t ;




 int sbuf_printf (struct sbuf*,char*,int ) ;

void
mt_entry_sbuf(struct sbuf *sb, struct mt_status_entry *entry, char *fmt)
{
 switch(entry->var_type) {
 case 129:
  if (fmt != ((void*)0))
   sbuf_printf(sb, fmt, (intmax_t)entry->value_signed);
  else
   sbuf_printf(sb, "%jd",
        (intmax_t)entry->value_signed);
  break;
 case 128:
  if (fmt != ((void*)0))
   sbuf_printf(sb, fmt, (uintmax_t)entry->value_unsigned);
  else
   sbuf_printf(sb, "%ju",
        (uintmax_t)entry->value_unsigned);
  break;
 default:
  if (fmt != ((void*)0))
   sbuf_printf(sb, fmt, entry->value);
  else
   sbuf_printf(sb, "%s", entry->value);
  break;
 }
}
