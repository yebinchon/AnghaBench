
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int krb5_storage ;
typedef int buf ;


 int INSIST (int) ;
 scalar_t__ krb5_storage_read (int *,char*,size_t) ;
 scalar_t__ krb5_storage_write (int *,char*,size_t) ;

__attribute__((used)) static int
read_data(krb5_storage *sp, krb5_storage *msg, size_t len)
{
    char buf[1024];

    while (len) {
 size_t tlen = len;
 ssize_t slen;

 if (tlen > sizeof(buf))
     tlen = sizeof(buf);

 slen = krb5_storage_read(sp, buf, tlen);
 INSIST((size_t)slen == tlen);

 slen = krb5_storage_write(msg, buf, tlen);
 INSIST((size_t)slen == tlen);

 len -= tlen;
    }
    return 0;
}
