
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* apr_palloc (int *,int) ;
 char* apr_pstrdup (int *,char const*) ;

__attribute__((used)) static char *
pstrdup_escape_nul_bytes(const char *buf, int len, apr_pool_t *pool)
{
    int i, nul_count = 0;
    char *ret;


    for (i = 0; i < len; i++) {
        if (buf[i] == '\0')
            nul_count++;
    }

    if (nul_count == 0) {

        ret = apr_pstrdup(pool, buf);
    } else {




        char *pos;
        ret = pos = apr_palloc(pool, len + 2 * nul_count + 1);
        for (i = 0; i < len; i++) {
            if (buf[i] != '\0') {
                *(pos++) = buf[i];
            } else {
                *(pos++) = '\\';
                *(pos++) = '0';
                *(pos++) = '0';
            }
        }
        *pos = '\0';
    }

    return ret;
}
