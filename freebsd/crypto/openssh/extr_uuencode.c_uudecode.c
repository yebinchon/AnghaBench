
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int __b64_pton (char*,int *,size_t) ;
 int free (char*) ;
 char* xstrdup (char const*) ;

int
uudecode(const char *src, u_char *target, size_t targsize)
{
 int len;
 char *encoded, *p;


 encoded = xstrdup(src);

 for (p = encoded; *p == ' ' || *p == '\t'; p++)
  ;
 for (; *p != '\0' && *p != ' ' && *p != '\t'; p++)
  ;

 *p = '\0';
 len = __b64_pton(encoded, target, targsize);
 free(encoded);
 return len;
}
