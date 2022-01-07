
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdissect_options ;


 int safeputchar (int *,unsigned char const) ;

__attribute__((used)) static void
print_asc(netdissect_options *ndo,
          const unsigned char *buf, int len)
{
    int i;
    for (i = 0; i < len; i++)
        safeputchar(ndo, buf[i]);
}
