
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_VERSION ;
 int OPENSSL_VERSION_TEXT ;
 int OpenSSL_version (int ) ;
 int SSLEAY_VERSION ;
 int SSLeay_version (int ) ;
 int os_snprintf (char*,size_t,char*,int ,int ) ;

int tls_get_library_version(char *buf, size_t buf_len)
{





 return os_snprintf(buf, buf_len, "OpenSSL build=%s run=%s",
      OPENSSL_VERSION_TEXT,
      SSLeay_version(SSLEAY_VERSION));

}
