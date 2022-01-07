
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSL_AD_CERTIFICATE_REQUIRED ;
 int SSL_AD_MISSING_EXTENSION ;
 int tls1_alert_code (int) ;

int tls13_alert_code(int code)
{

    if (code == SSL_AD_MISSING_EXTENSION || code == SSL_AD_CERTIFICATE_REQUIRED)
        return code;

    return tls1_alert_code(code);
}
