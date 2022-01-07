
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 unsigned int MAX_SCAN_ID ;
 int atoi (char const*) ;
 char* os_strchr (char const*,char) ;

__attribute__((used)) static int scan_id_list_parse(struct wpa_supplicant *wpa_s, const char *value,
         unsigned int *scan_id_count, int scan_id[])
{
 const char *pos = value;

 while (pos) {
  if (*pos == ' ' || *pos == '\0')
   break;
  if (*scan_id_count == MAX_SCAN_ID)
   return -1;
  scan_id[(*scan_id_count)++] = atoi(pos);
  pos = os_strchr(pos, ',');
  if (pos)
   pos++;
 }

 return 0;
}
