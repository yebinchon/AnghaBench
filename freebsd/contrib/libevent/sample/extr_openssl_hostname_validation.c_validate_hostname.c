
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef scalar_t__ HostnameValidationResult ;


 scalar_t__ Error ;
 scalar_t__ NoSANPresent ;
 scalar_t__ matches_common_name (char const*,int const*) ;
 scalar_t__ matches_subject_alternative_name (char const*,int const*) ;

HostnameValidationResult validate_hostname(const char *hostname, const X509 *server_cert) {
        HostnameValidationResult result;

        if((hostname == ((void*)0)) || (server_cert == ((void*)0)))
                return Error;


        result = matches_subject_alternative_name(hostname, server_cert);
        if (result == NoSANPresent) {

                result = matches_common_name(hostname, server_cert);
        }

        return result;
}
