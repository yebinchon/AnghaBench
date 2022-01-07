
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 void* min (int,size_t) ;
 int strlcpy (char*,char*,size_t) ;
 size_t strlen (char const*) ;
 char toupper (char const) ;

size_t
ntpsnmpd_parse_string(
 const char * string,
 char * field,
 size_t fieldsize,
 char * value,
 size_t valuesize
 )
{
 int i;
 int j;
 int loop;
 size_t str_cnt;
 size_t val_cnt;


 if (fieldsize < 1 || valuesize < 1)
  return 0;

 str_cnt = strlen(string);


 j = 0;
 loop = TRUE;
 for (i = 0; loop && i <= str_cnt; i++) {
  switch (string[i]) {

  case '\t':
  case '\n':
  case '\r':
  case ' ':
   break;

  case '=':
   loop = FALSE;
   break;

  default:
   if (j < fieldsize)
    field[j++] = toupper(string[i]);
  }
 }

 j = min(j, fieldsize - 1);
 field[j] = '\0';


 value[0] = '\0';
 j = 0;
 for (val_cnt = 0; i < str_cnt; i++) {
  if (string[i] > 0x0D && string[i] != ' ')
   val_cnt = min(j + 1, valuesize - 1);

  if (value[0] != '\0' ||
      (string[i] > 0x0D && string[i] != ' ')) {
   if (j < valuesize)
    value[j++] = string[i];
  }
 }
 value[val_cnt] = '\0';

 if (value[0] == '"') {
  val_cnt--;
  strlcpy(value, &value[1], valuesize);
  if (val_cnt > 0 && value[val_cnt - 1] == '"') {
   val_cnt--;
   value[val_cnt] = '\0';
  }
 }

 return val_cnt;
}
