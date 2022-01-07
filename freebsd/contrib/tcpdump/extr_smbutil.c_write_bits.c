
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 size_t PTR_DIFF (char const*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void
write_bits(netdissect_options *ndo,
           unsigned int val, const char *fmt)
{
    const char *p = fmt;
    int i = 0;

    while ((p = strchr(fmt, '|'))) {
 size_t l = PTR_DIFF(p, fmt);
 if (l && (val & (1 << i)))
     ND_PRINT((ndo, "%.*s ", (int)l, fmt));
 fmt = p + 1;
 i++;
    }
}
