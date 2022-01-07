
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL ;


 int SSL_AD_INTERNAL_ERROR ;
 unsigned int SSL_EXT_TLS1_3_CERTIFICATE ;
 int serverinfo_find_extension (unsigned char const*,size_t,unsigned int,unsigned char const**,size_t*) ;
 scalar_t__ ssl_get_server_cert_serverinfo (int *,unsigned char const**,size_t*) ;

__attribute__((used)) static int serverinfoex_srv_add_cb(SSL *s, unsigned int ext_type,
                                   unsigned int context,
                                   const unsigned char **out,
                                   size_t *outlen, X509 *x, size_t chainidx,
                                   int *al, void *arg)
{
    const unsigned char *serverinfo = ((void*)0);
    size_t serverinfo_length = 0;


    if ((context & SSL_EXT_TLS1_3_CERTIFICATE) != 0 && chainidx > 0)
        return 0;


    if ((ssl_get_server_cert_serverinfo(s, &serverinfo,
                                        &serverinfo_length)) != 0) {

        int retval = serverinfo_find_extension(serverinfo, serverinfo_length,
                                               ext_type, out, outlen);
        if (retval == -1) {
            *al = SSL_AD_INTERNAL_ERROR;
            return -1;
        }
        if (retval == 0)
            return 0;
        return 1;
    }
    return 0;

}
