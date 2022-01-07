
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*,char const*,char const*,int) ;

int
assfail(const char *a, const char *f, int l)
{

 panic("solaris assert: %s, file: %s, line: %d", a, f, l);

 return (0);
}
