
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_R_MALLOC_FAILURE ;
 int OCSP_F_OCSP_PARSE_URL ;
 int OCSP_R_ERROR_PARSING_URL ;
 int OCSPerr (int ,int ) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;

int OCSP_parse_url(const char *url, char **phost, char **pport, char **ppath,
                   int *pssl)
{
    char *p, *buf;

    char *host, *port;

    *phost = ((void*)0);
    *pport = ((void*)0);
    *ppath = ((void*)0);


    buf = OPENSSL_strdup(url);
    if (!buf)
        goto mem_err;


    p = strchr(buf, ':');

    if (!p)
        goto parse_err;

    *(p++) = '\0';

    if (strcmp(buf, "http") == 0) {
        *pssl = 0;
        port = "80";
    } else if (strcmp(buf, "https") == 0) {
        *pssl = 1;
        port = "443";
    } else
        goto parse_err;


    if ((p[0] != '/') || (p[1] != '/'))
        goto parse_err;

    p += 2;

    host = p;



    p = strchr(p, '/');

    if (!p)
        *ppath = OPENSSL_strdup("/");
    else {
        *ppath = OPENSSL_strdup(p);

        *p = '\0';
    }

    if (!*ppath)
        goto mem_err;

    p = host;
    if (host[0] == '[') {

        host++;
        p = strchr(host, ']');
        if (!p)
            goto parse_err;
        *p = '\0';
        p++;
    }


    if ((p = strchr(p, ':'))) {
        *p = 0;
        port = p + 1;
    }

    *pport = OPENSSL_strdup(port);
    if (!*pport)
        goto mem_err;

    *phost = OPENSSL_strdup(host);

    if (!*phost)
        goto mem_err;

    OPENSSL_free(buf);

    return 1;

 mem_err:
    OCSPerr(OCSP_F_OCSP_PARSE_URL, ERR_R_MALLOC_FAILURE);
    goto err;

 parse_err:
    OCSPerr(OCSP_F_OCSP_PARSE_URL, OCSP_R_ERROR_PARSING_URL);

 err:
    OPENSSL_free(buf);
    OPENSSL_free(*ppath);
    *ppath = ((void*)0);
    OPENSSL_free(*pport);
    *pport = ((void*)0);
    OPENSSL_free(*phost);
    *phost = ((void*)0);
    return 0;

}
