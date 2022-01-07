
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GNUTLS_VERSION ;
 int gnutls_check_version (int *) ;
 int os_snprintf (char*,size_t,char*,int ,int ) ;

int tls_get_library_version(char *buf, size_t buf_len)
{
 return os_snprintf(buf, buf_len, "GnuTLS build=%s run=%s",
      GNUTLS_VERSION, gnutls_check_version(((void*)0)));
}
