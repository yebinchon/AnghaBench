
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



 int flowtypecmds ;
 char* match_value (int ,int) ;
 int print_flags_buffer (char*,size_t,int ,int) ;
 int snprintf (char*,size_t,char*,char const*) ;
 int tabletypes ;

void
table_print_type(char *tbuf, size_t size, uint8_t type, uint8_t tflags)
{
 const char *tname;
 int l;

 if ((tname = match_value(tabletypes, type)) == ((void*)0))
  tname = "unknown";

 l = snprintf(tbuf, size, "%s", tname);
 tbuf += l;
 size -= l;

 switch(type) {
 case 128:
  if (tflags != 0) {
   *tbuf++ = ':';
   l--;
   print_flags_buffer(tbuf, size, flowtypecmds, tflags);
  }
  break;
 }
}
