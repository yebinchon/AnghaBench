
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ch_t ;



 int ao_string_cook_escape_char (char const*,char*,int) ;

__attribute__((used)) static void
copy_cooked(ch_t ** ppDest, char const ** ppSrc)
{
    ch_t * pDest = (ch_t *)*ppDest;
    const ch_t * pSrc = (const ch_t *)(*ppSrc + 1);

    for (;;) {
        ch_t ch = *(pSrc++);
        switch (ch) {
        case 128: *ppSrc = ((void*)0); return;
        case '"': goto done;
        case '\\':
            pSrc += ao_string_cook_escape_char((const char *)pSrc, (char *)&ch, 0x7F);
            if (ch == 0x7F)
                break;


        default:
            *(pDest++) = ch;
        }
    }

 done:
    *ppDest = (ch_t *)pDest;
    *ppSrc = (char const *)pSrc;
}
