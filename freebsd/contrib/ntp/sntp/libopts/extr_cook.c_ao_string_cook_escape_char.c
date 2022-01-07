
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint_t ;


 int IS_HEX_DIGIT_CHAR (char const) ;
 int IS_OCT_DIGIT_CHAR (char const) ;


 unsigned long strtoul (char*,int *,int) ;

unsigned int
ao_string_cook_escape_char(char const * pzIn, char * pRes, uint_t nl)
{
    unsigned int res = 1;

    switch (*pRes = *pzIn++) {
    case 128:
        return 0;
    case '\r':
        if (*pzIn != 129)
            return 1;
        res++;

    case 129:
        *pRes = (char)nl;
        return res;

    case 'a': *pRes = '\a'; break;
    case 'b': *pRes = '\b'; break;
    case 'f': *pRes = '\f'; break;
    case 'n': *pRes = 129; break;
    case 'r': *pRes = '\r'; break;
    case 't': *pRes = '\t'; break;
    case 'v': *pRes = '\v'; break;

    case 'x':
    case 'X':
        if (IS_HEX_DIGIT_CHAR(*pzIn)) {
            char z[4];
            unsigned int ct = 0;

            do {
                z[ct] = pzIn[ct];
                if (++ct >= 2)
                    break;
            } while (IS_HEX_DIGIT_CHAR(pzIn[ct]));
            z[ct] = 128;
            *pRes = (char)strtoul(z, ((void*)0), 16);
            return ct + 1;
        }
        break;

    case '0': case '1': case '2': case '3':
    case '4': case '5': case '6': case '7':
    {





        char z[4];
        unsigned long val;
        unsigned int ct = 0;

        z[ct++] = *--pzIn;
        while (IS_OCT_DIGIT_CHAR(pzIn[ct])) {
            z[ct] = pzIn[ct];
            if (++ct >= 3)
                break;
        }

        z[ct] = 128;
        val = strtoul(z, ((void*)0), 8);
        if (val > 0xFF)
            val = 0xFF;
        *pRes = (char)val;
        return ct;
    }

    default: ;
    }

    return res;
}
