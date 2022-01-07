
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int X509_NAME ;
typedef int X509 ;


 scalar_t__ APR_SUCCESS ;
 int ErrorOnNul ;
 int NID_commonName ;
 scalar_t__ SERF_ERROR_SSL_CERT_FAILED ;
 int X509_NAME_get_text_by_NID (int *,int ,char*,int) ;
 int * X509_get_subject_name (int *) ;
 scalar_t__ get_subject_alt_names (int *,int *,int ,int *) ;
 int strlen (char*) ;

__attribute__((used)) static apr_status_t validate_cert_hostname(X509 *server_cert, apr_pool_t *pool)
{
    char buf[1024];
    int length;
    apr_status_t ret;

    ret = get_subject_alt_names(((void*)0), server_cert, ErrorOnNul, ((void*)0));
    if (ret) {
      return ret;
    } else {

        X509_NAME *subject = X509_get_subject_name(server_cert);
        if (!subject)
            return SERF_ERROR_SSL_CERT_FAILED;

        length = X509_NAME_get_text_by_NID(subject, NID_commonName, buf, 1024);
        if (length != -1)
            if (strlen(buf) != length)
                return SERF_ERROR_SSL_CERT_FAILED;
    }

    return APR_SUCCESS;
}
