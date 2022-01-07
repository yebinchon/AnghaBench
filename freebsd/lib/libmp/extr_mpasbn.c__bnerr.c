
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_get_error () ;
 int ERR_load_crypto_strings () ;
 int ERR_reason_error_string (int ) ;
 int MPERRX (char*) ;

__attribute__((used)) static void
_bnerr(const char *msg)
{

 ERR_load_crypto_strings();
 MPERRX(("%s: %s", msg, ERR_reason_error_string(ERR_get_error())));
}
