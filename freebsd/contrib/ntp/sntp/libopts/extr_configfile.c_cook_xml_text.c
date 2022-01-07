
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_xml_encoding (char**) ;
 scalar_t__ strtoul (char*,int *,int) ;

__attribute__((used)) static void
cook_xml_text(char * pzData)
{
    char * pzs = pzData;
    char * pzd = pzData;
    char bf[4];
    bf[2] = 128;

    for (;;) {
        int ch = ((int)*(pzs++)) & 0xFF;
        switch (ch) {
        case 128:
            *pzd = 128;
            return;

        case '&':
            ch = parse_xml_encoding(&pzs);
            *(pzd++) = (char)ch;
            if (ch == 128)
                return;
            break;

        case '%':
            bf[0] = *(pzs++);
            bf[1] = *(pzs++);
            if ((bf[0] == 128) || (bf[1] == 128)) {
                *pzd = 128;
                return;
            }

            ch = (int)strtoul(bf, ((void*)0), 16);


        default:
            *(pzd++) = (char)ch;
        }
    }
}
