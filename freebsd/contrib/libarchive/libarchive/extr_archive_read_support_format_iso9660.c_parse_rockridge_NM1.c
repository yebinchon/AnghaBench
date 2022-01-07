
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int name_continues; int name; } ;


 int archive_strcat (int *,char*) ;
 int archive_string_empty (int *) ;
 int archive_strncat (int *,char const*,int) ;

__attribute__((used)) static void
parse_rockridge_NM1(struct file_info *file,
      const unsigned char *data, int data_length)
{
 if (!file->name_continues)
  archive_string_empty(&file->name);
 file->name_continues = 0;
 if (data_length < 1)
  return;
 switch(data[0]) {
 case 0:
  if (data_length < 2)
   return;
  archive_strncat(&file->name,
      (const char *)data + 1, data_length - 1);
  break;
 case 1:
  if (data_length < 2)
   return;
  archive_strncat(&file->name,
      (const char *)data + 1, data_length - 1);
  file->name_continues = 1;
  break;
 case 2:
  archive_strcat(&file->name, ".");
  break;
 case 4:
  archive_strcat(&file->name, "..");
  break;
 default:
  return;
 }

}
