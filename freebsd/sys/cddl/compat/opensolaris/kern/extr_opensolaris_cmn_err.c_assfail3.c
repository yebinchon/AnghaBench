
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int panic (char*,char const*,int ,char const*,int ,char const*,int) ;

void
assfail3(const char *a, uintmax_t lv, const char *op, uintmax_t rv,
    const char *f, int l)
{

 panic("solaris assert: %s (0x%jx %s 0x%jx), file: %s, line: %d",
     a, lv, op, rv, f, l);
}
