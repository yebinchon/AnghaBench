
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;




 unsigned int ao_string_cook_escape_char (char*,char*,int ) ;
 int contiguous_quote (char**,char*,int*) ;

char *
ao_string_cook(char * pzScan, int * lnct_p)
{
    int l = 0;
    char q = *pzScan;





    char * pzD = pzScan++;
    char * pzS = pzScan;

    if (lnct_p == ((void*)0))
        lnct_p = &l;

    for (;;) {







        while (*pzS == q) {
            *pzD = 128;
            if (! contiguous_quote(&pzS, &q, lnct_p))
                return pzS;
        }




        switch (*(pzD++) = *(pzS++)) {
        case 128:
            return ((void*)0);

        case 129:
            (*lnct_p)++;
            break;

        case '\\':





            if (*pzS == 129) {
                pzS++;
                pzD--;
                (*lnct_p)++;
            }





            else if (q != '\'') {
                unsigned int ct;
                ct = ao_string_cook_escape_char(pzS, pzD-1, (uint_t)129);
                if (ct == 0)
                    return ((void*)0);

                pzS += ct;
            }





            else switch (*pzS) {
            case '\\':
            case '\'':
            case '#':
                pzD[-1] = *pzS++;
            }
        }
    }
}
