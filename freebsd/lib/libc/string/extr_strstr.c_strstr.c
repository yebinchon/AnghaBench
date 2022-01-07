
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* fourbyte_strstr (void*,void*) ;
 char* strchr (char const*,char const) ;
 char* threebyte_strstr (void*,void*) ;
 char* twobyte_strstr (void*,void*) ;
 char* twoway_strstr (void*,void*) ;

char *strstr(const char *h, const char *n)
{

 if (!n[0]) return (char *)h;


 h = strchr(h, *n);
 if (!h || !n[1]) return (char *)h;
 if (!h[1]) return 0;
 if (!n[2]) return twobyte_strstr((void *)h, (void *)n);
 if (!h[2]) return 0;
 if (!n[3]) return threebyte_strstr((void *)h, (void *)n);
 if (!h[3]) return 0;
 if (!n[4]) return fourbyte_strstr((void *)h, (void *)n);

 return twoway_strstr((void *)h, (void *)n);
}
