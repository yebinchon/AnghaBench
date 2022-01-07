
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static char*
str_find_first_of_chars(char* s, char a, char b)
{
 char* ra = strchr(s, a);
 char* rb = strchr(s, b);
 if(!ra) return rb;
 if(!rb) return ra;
 if(ra < rb) return ra;
 return rb;
}
