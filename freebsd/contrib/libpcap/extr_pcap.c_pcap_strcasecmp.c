
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_char ;


 size_t* charmap ;

int
pcap_strcasecmp(const char *s1, const char *s2)
{
 register const u_char *cm = charmap,
    *us1 = (const u_char *)s1,
    *us2 = (const u_char *)s2;

 while (cm[*us1] == cm[*us2++])
  if (*us1++ == '\0')
   return(0);
 return (cm[*us1] - cm[*--us2]);
}
