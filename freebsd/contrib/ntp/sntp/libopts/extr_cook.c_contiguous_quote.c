
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_WHITESPACE_CHAR (char) ;
 int NL ;
 char* strchr (char*,int ) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static bool
contiguous_quote(char ** pps, char * pq, int * lnct_p)
{
    char * ps = *pps + 1;

    for (;;) {
        while (IS_WHITESPACE_CHAR(*ps))
            if (*(ps++) == NL)
                (*lnct_p)++;





        switch (*ps) {
        case '"':
        case '\'':
            *pq = *(ps++);
            *pps = ps;
            return 1;

        case '/':



            switch (ps[1]) {
            default:
                *pps = ((void*)0);
                return 0;

            case '/':



                ps = strchr(ps, NL);
                if (ps == ((void*)0)) {
                    *pps = ((void*)0);
                    return 0;
                }
                break;

            case '*':
            {
                char * p = strstr( ps+2, "*/" );



                if (p == ((void*)0)) {
                    *pps = ((void*)0);
                    return 0;
                }

                while (ps < p) {
                    if (*(ps++) == NL)
                        (*lnct_p)++;
                }

                ps = p + 2;
            }
            }
            continue;

        default:




            *pps = ps;
            return 0;
        }
    }
}
