
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;







 int find_crlf (char const**,int*,int*) ;
 char* memchr (char const*,char,int) ;

void serf_util_readline(
    const char **data,
    apr_size_t *len,
    int acceptable,
    int *found)
{
    const char *start;
    const char *cr;
    const char *lf;
    int want_cr;
    int want_crlf;
    int want_lf;




    if (acceptable == 131) {
        find_crlf(data, len, found);
        return;
    }

    start = *data;
    cr = lf = ((void*)0);
    want_cr = acceptable & 132;
    want_crlf = acceptable & 131;
    want_lf = acceptable & 129;

    if (want_cr || want_crlf) {
        cr = memchr(start, '\r', *len);
    }
    if (want_lf) {
        lf = memchr(start, '\n', *len);
    }

    if (cr != ((void*)0)) {
        if (lf != ((void*)0)) {
            if (cr + 1 == lf)
                *found = want_crlf ? 131 : 132;
            else if (want_cr && cr < lf)
                *found = 132;
            else
                *found = 129;
        }
        else if (cr == start + *len - 1) {




            *found = want_crlf ? 130 : 132;
        }
        else if (want_cr)
            *found = 132;
        else
            *found = 128;
    }
    else if (lf != ((void*)0))
        *found = 129;
    else
        *found = 128;

    switch (*found) {
      case 129:
        *data = lf + 1;
        break;
      case 132:
      case 131:
      case 130:
        *data = cr + 1 + (*found == 131);
        break;
      case 128:
        *data += *len;
        break;
      default:

        return;
    }

    *len -= *data - start;
}
