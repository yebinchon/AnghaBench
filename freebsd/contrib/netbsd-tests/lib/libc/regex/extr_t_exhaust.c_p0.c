
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* concat (char*,char*) ;
 int free (char*) ;
 char* mkstr (char*,size_t) ;

__attribute__((used)) static char *
p0(size_t len)
{
 char *d, *s1, *s2;
 s1 = mkstr("\\(", len);
 s2 = concat(s1, ")");
 free(s1);
 d = concat("(", s2);
 free(s2);
 return d;
}
