
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strndup (char*,int) ;

int
main(void)
{
 char *s;

 s = strndup("123", 2);
 return s[0] != '1' ? 1 : s[1] != '2' ? 2 : s[2] != '\0' ? 3 : 0;
}
