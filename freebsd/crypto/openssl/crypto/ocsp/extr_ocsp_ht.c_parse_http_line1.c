
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_add_error_data (int,char*,char*,...) ;
 int OCSP_F_PARSE_HTTP_LINE1 ;
 int OCSP_R_SERVER_RESPONSE_ERROR ;
 int OCSP_R_SERVER_RESPONSE_PARSE_ERROR ;
 int OCSPerr (int ,int ) ;
 scalar_t__ ossl_isspace (char) ;
 int strlen (char*) ;
 int strtoul (char*,char**,int) ;

__attribute__((used)) static int parse_http_line1(char *line)
{
    int retcode;
    char *p, *q, *r;


    for (p = line; *p && !ossl_isspace(*p); p++)
        continue;
    if (!*p) {
        OCSPerr(OCSP_F_PARSE_HTTP_LINE1, OCSP_R_SERVER_RESPONSE_PARSE_ERROR);
        return 0;
    }


    while (*p && ossl_isspace(*p))
        p++;

    if (!*p) {
        OCSPerr(OCSP_F_PARSE_HTTP_LINE1, OCSP_R_SERVER_RESPONSE_PARSE_ERROR);
        return 0;
    }


    for (q = p; *q && !ossl_isspace(*q); q++)
        continue;

    if (!*q) {
        OCSPerr(OCSP_F_PARSE_HTTP_LINE1, OCSP_R_SERVER_RESPONSE_PARSE_ERROR);
        return 0;
    }


    *q++ = 0;


    retcode = strtoul(p, &r, 10);

    if (*r)
        return 0;


    while (*q && ossl_isspace(*q))
        q++;

    if (*q) {





        for (r = q + strlen(q) - 1; ossl_isspace(*r); r--)
            *r = 0;
    }
    if (retcode != 200) {
        OCSPerr(OCSP_F_PARSE_HTTP_LINE1, OCSP_R_SERVER_RESPONSE_ERROR);
        if (!*q)
            ERR_add_error_data(2, "Code=", p);
        else
            ERR_add_error_data(4, "Code=", p, ",Reason=", q);
        return 0;
    }

    return 1;

}
