
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* concat (char*,char*) ;
 int free (char*) ;
 char* mkstr (char const*,size_t) ;

__attribute__((used)) static char *
ps(const char *m, const char *s, size_t len)
{
 char *d, *s1, *s2, *s3;
 s1 = mkstr(m, len);
 s2 = mkstr(s, len);
 s3 = concat(s1, s2);
 free(s2);
 free(s1);
 d = concat("(.?)", s3);
 free(s3);
 return d;
}
