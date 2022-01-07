
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* emalloc (size_t) ;
 int snprintf (char*,size_t,char*,char*) ;
 int special_chars ;
 int * strchr (char*,char) ;
 size_t strcspn (char*,int ) ;
 int strlcpy (char*,char*,size_t) ;
 size_t strlen (char*) ;

char *
quote_if_needed(char *str)
{
 char *ret;
 size_t len;
 size_t octets;

 len = strlen(str);
 octets = len + 2 + 1;
 ret = emalloc(octets);
 if ('"' != str[0]
     && (strcspn(str, special_chars) < len
  || strchr(str, ' ') != ((void*)0))) {
  snprintf(ret, octets, "\"%s\"", str);
 } else
  strlcpy(ret, str, octets);

 return ret;
}
