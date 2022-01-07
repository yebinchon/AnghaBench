
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (char*,int ,size_t) ;
 size_t min (size_t,size_t) ;
 size_t strlen (char const*) ;

size_t
ntpsnmpd_cut_string(
 const char * string,
 char * dest,
 char delim,
 int fieldnumber,
 size_t maxsize
 )
{
 size_t i;
 size_t j;
 int l;
 size_t str_cnt;

 if (maxsize < 1)
  return 0;

 str_cnt = strlen(string);
 j = 0;
 memset(dest, 0, maxsize);


 for (i = 0, l = 0; i < str_cnt && l <= fieldnumber; i++) {
  if (string[i] == delim)
   l++;
  else if (l == fieldnumber && j < maxsize)
   dest[j++] = string[i];
 }
 j = min(j, maxsize - 1);
 dest[j] = '\0';

 return j;
}
