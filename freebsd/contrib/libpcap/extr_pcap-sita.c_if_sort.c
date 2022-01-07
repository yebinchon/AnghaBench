
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str2 ;
typedef int str1 ;


 int MAX_LINE_SIZE ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int if_sort(char *s1, char *s2) {
 char *s1_p2, *s2_p2;
 char str1[MAX_LINE_SIZE], str2[MAX_LINE_SIZE];
 int s1_p1_len, s2_p1_len;
 int retval;

 if ((s1_p2 = strchr(s1, '_'))) {
  s1_p1_len = s1_p2 - s1;
  s1_p2++;
 } else {
  s1_p1_len = strlen(s1);
  s1_p2 = 0;
 }
 if ((s2_p2 = strchr(s2, '_'))) {
  s2_p1_len = s2_p2 - s2;
  s2_p2++;
 } else {
  s2_p1_len = strlen(s2);
  s2_p2 = 0;
 }
 strncpy(str1, s1, (s1_p1_len > sizeof(str1)) ? s1_p1_len : sizeof(str1)); *(str1 + s1_p1_len) = 0;
 strncpy(str2, s2, (s2_p1_len > sizeof(str2)) ? s2_p1_len : sizeof(str2)); *(str2 + s2_p1_len) = 0;
 retval = strcmp(str1, str2);
 if (retval != 0) return retval;
 return strcmp(s1_p2, s2_p2);
}
