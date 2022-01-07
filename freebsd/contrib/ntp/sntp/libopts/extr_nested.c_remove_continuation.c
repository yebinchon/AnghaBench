
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char NL ;

 char* strchr (char*,char) ;

__attribute__((used)) static void
remove_continuation(char * src)
{
    char * pzD;

    do {
        while (*src == NL) src++;
        pzD = strchr(src, NL);
        if (pzD == ((void*)0))
            return;






        src = pzD--;
        if (*pzD != '\\')
            pzD++;
    } while (pzD == src);




    for (;;) {
        char ch = ((*pzD++) = *(src++));
        switch (ch) {
        case 128: return;
        case '\\':
            if (*src == NL)
                --pzD;
        }
    }
}
