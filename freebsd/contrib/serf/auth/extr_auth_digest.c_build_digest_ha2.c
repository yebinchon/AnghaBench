
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_ENOTIMPL ;
 int APR_MD5_DIGESTSIZE ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_md5 (unsigned char*,char const*,int ) ;
 char* apr_psprintf (int *,char*,char const*,char const*) ;
 char* hex_encode (unsigned char*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static apr_status_t
build_digest_ha2(const char **out_ha2,
                 const char *uri,
                 const char *method,
                 const char *qop,
                 apr_pool_t *pool)
{
    if (!qop || strcmp(qop, "auth") == 0) {
        const char *tmp;
        unsigned char ha2[APR_MD5_DIGESTSIZE];
        apr_status_t status;



        tmp = apr_psprintf(pool, "%s:%s",
                           method,
                           uri);
        status = apr_md5(ha2, tmp, strlen(tmp));
        if (status)
            return status;

        *out_ha2 = hex_encode(ha2, pool);

        return APR_SUCCESS;
    } else {

        return APR_ENOTIMPL;
    }
}
