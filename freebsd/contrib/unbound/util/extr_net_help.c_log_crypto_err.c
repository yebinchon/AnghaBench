
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int ERR_error_string_n (unsigned long,char*,int) ;
 unsigned long ERR_get_error () ;
 int log_err (char*,char const*,...) ;

void
log_crypto_err(const char* str)
{
 (void)str;

}
