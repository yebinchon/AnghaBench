
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* AGALOC (int ,char*) ;






 char* MK_STR_OCT_FMT ;
 char const NL ;


 int add_esc_ch (char) ;
 int memcpy (char*,char const*,size_t) ;
 int sprintf (char*,char*,unsigned char) ;
 int string_size (char const*,size_t) ;
 size_t strlen (char const*) ;

char const *
optionQuoteString(char const * text, char const * nl)
{
    size_t nl_len = strlen(nl);
    char * out;
    char * res = out = AGALOC(string_size(text, nl_len), "quot str");
    *(out++) = '"';

    for (;;) {
        unsigned char ch = (unsigned char)*text;
        if ((ch >= ' ') && (ch <= '~')) {
            if ((ch == '"') || (ch == '\\'))



                *(out++) = '\\';
            *(out++) = (char)ch;

        } else switch (ch) {

        case 135: { *(out++) = '\\'; *(out++) = ('a'); }; break;
        case 134: { *(out++) = '\\'; *(out++) = ('b'); }; break;
        case 131: { *(out++) = '\\'; *(out++) = ('t'); }; break;
        case 128: { *(out++) = '\\'; *(out++) = ('v'); }; break;
        case 132: { *(out++) = '\\'; *(out++) = ('f'); }; break;
        case 133: { *(out++) = '\\'; *(out++) = ('r'); }; break;

        case 130:




            while (*++text == NL)
                { *(out++) = '\\'; *(out++) = ('n'); };




            if (*text != 129) {
                memcpy(out, nl, nl_len);
                out += nl_len;

                continue;
            }

            { *(out++) = '\\'; *(out++) = ('n'); };


        case 129:




            *(out++) = '"';
            *out = 129;
            return res;

        default:




            sprintf(out, MK_STR_OCT_FMT, ch);
            out += 4;
        }

        text++;

    }
}
