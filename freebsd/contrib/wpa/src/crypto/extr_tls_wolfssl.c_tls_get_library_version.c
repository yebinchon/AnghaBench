
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WOLFSSL_VERSION ;
 int os_snprintf (char*,size_t,char*,int ,int ) ;
 int wolfSSL_lib_version () ;

int tls_get_library_version(char *buf, size_t buf_len)
{
 return os_snprintf(buf, buf_len, "wolfSSL build=%s run=%s",
      WOLFSSL_VERSION, wolfSSL_lib_version());
}
