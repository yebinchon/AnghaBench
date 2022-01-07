
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 int* os_calloc (size_t,int) ;
 int os_free (int*) ;
 int* os_realloc_array (int*,size_t,int) ;
 char* os_strchr (char const*,char) ;

__attribute__((used)) static int * wpa_config_parse_int_array(const char *value)
{
 int *freqs;
 size_t used, len;
 const char *pos;

 used = 0;
 len = 10;
 freqs = os_calloc(len + 1, sizeof(int));
 if (freqs == ((void*)0))
  return ((void*)0);

 pos = value;
 while (pos) {
  while (*pos == ' ')
   pos++;
  if (used == len) {
   int *n;
   size_t i;
   n = os_realloc_array(freqs, len * 2 + 1, sizeof(int));
   if (n == ((void*)0)) {
    os_free(freqs);
    return ((void*)0);
   }
   for (i = len; i <= len * 2; i++)
    n[i] = 0;
   freqs = n;
   len *= 2;
  }

  freqs[used] = atoi(pos);
  if (freqs[used] == 0)
   break;
  used++;
  pos = os_strchr(pos + 1, ' ');
 }

 return freqs;
}
