
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdissect_options ;


 int ND_TTEST (char const) ;

__attribute__((used)) static const char *
parse_field(netdissect_options *ndo, const char **pptr, int *len, int *truncated)
{
    const char *s;


    s = *pptr;

    for (;;) {
 if (*len == 0) {

     return ((void*)0);
 }
 if (!ND_TTEST(**pptr)) {

     *truncated = 1;
     return ((void*)0);
 }
 if (**pptr == '\0') {

     break;
 }

 (*pptr)++;
 (*len)--;
    }

    (*pptr)++;
    (*len)--;
    return s;
}
