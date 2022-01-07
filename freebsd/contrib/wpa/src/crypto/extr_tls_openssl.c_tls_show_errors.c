
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_error_string (unsigned long,int *) ;
 unsigned long ERR_get_error () ;
 int MSG_INFO ;
 int wpa_printf (int,char*,char const*,...) ;

__attribute__((used)) static void tls_show_errors(int level, const char *func, const char *txt)
{
 unsigned long err;

 wpa_printf(level, "OpenSSL: %s - %s %s",
     func, txt, ERR_error_string(ERR_get_error(), ((void*)0)));

 while ((err = ERR_get_error())) {
  wpa_printf(MSG_INFO, "OpenSSL: pending error: %s",
      ERR_error_string(err, ((void*)0)));
 }
}
