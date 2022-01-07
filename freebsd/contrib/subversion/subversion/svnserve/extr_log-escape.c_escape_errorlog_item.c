
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;


 int c2x (unsigned char const,char,unsigned char*) ;
 scalar_t__ svn_ctype_iscntrl (unsigned char const) ;
 int svn_ctype_isprint (unsigned char const) ;

apr_size_t escape_errorlog_item(char *dest, const char *source,
                                apr_size_t buflen)
{
    unsigned char *d, *ep;
    const unsigned char *s;

    if (!source || !buflen) {
        return 0;
    }

    d = (unsigned char *)dest;
    s = (const unsigned char *)source;
    ep = d + buflen - 1;

    for (; d < ep && *s; ++s) {






        if (*s && ( !svn_ctype_isprint(*s)
                   || *s == '\\'
                   || svn_ctype_iscntrl(*s))) {
            *d++ = '\\';
            if (d >= ep) {
                --d;
                break;
            }

            switch(*s) {
            case '\b':
                *d++ = 'b';
                break;
            case '\n':
                *d++ = 'n';
                break;
            case '\r':
                *d++ = 'r';
                break;
            case '\t':
                *d++ = 't';
                break;
            case '\v':
                *d++ = 'v';
                break;
            case '\\':
                *d++ = *s;
                break;
            case '"':
                d[-1] = *s;
                break;
            default:
                if (d >= ep - 2) {
                    ep = --d;
                    break;
                }
                c2x(*s, 'x', d);
                d += 3;
            }
        }
        else {
            *d++ = *s;
        }
    }
    *d = '\0';

    return (d - (unsigned char *)dest);
}
