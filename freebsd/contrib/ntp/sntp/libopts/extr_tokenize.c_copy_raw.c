
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ch_t ;
typedef int cc_t ;





__attribute__((used)) static void
copy_raw(ch_t ** ppDest, char const ** ppSrc)
{
    ch_t * pDest = *ppDest;
    cc_t * pSrc = (cc_t *) (*ppSrc + 1);

    for (;;) {
        ch_t ch = *(pSrc++);
        switch (ch) {
        case 128: *ppSrc = ((void*)0); return;
        case '\'': goto done;
        case '\\':




            switch (*pSrc) {
            case 128: *ppSrc = ((void*)0); return;
            case '\r':
                if (*(++pSrc) == 129)
                    ++pSrc;
                continue;

            case 129:
                ++pSrc;
                continue;

            case '\'':
                ch = '\'';


            case '\\':
                ++pSrc;
                break;
            }


        default:
            *(pDest++) = ch;
        }
    }

 done:
    *ppDest = pDest;
    *ppSrc = (char const *) pSrc;
}
