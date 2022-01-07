
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_5__ {scalar_t__ keytype; } ;
typedef TYPE_1__ krb5_keyblock ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int hdb_master_key ;
typedef int buf ;


 scalar_t__ ETYPE_DES_CBC_CRC ;
 scalar_t__ ETYPE_DES_CBC_MD5 ;
 scalar_t__ ETYPE_DES_CFB64_NONE ;
 int O_BINARY ;
 int O_RDONLY ;
 int close (int) ;
 int decode_EncryptionKey (unsigned char*,scalar_t__,TYPE_1__*,size_t*) ;
 int errno ;
 int hdb_process_master_key (int ,int ,TYPE_1__*,int ,int *) ;
 int krb5_free_keyblock_contents (int ,TYPE_1__*) ;
 int krb5_set_error_message (int ,int,char*,char const*,int ) ;
 int memset (unsigned char*,int ,int) ;
 int open (char const*,int) ;
 scalar_t__ read (int,unsigned char*,int) ;
 int strerror (int) ;

__attribute__((used)) static krb5_error_code
read_master_encryptionkey(krb5_context context, const char *filename,
     hdb_master_key *mkey)
{
    int fd;
    krb5_keyblock key;
    krb5_error_code ret;
    unsigned char buf[256];
    ssize_t len;
    size_t ret_len;

    fd = open(filename, O_RDONLY | O_BINARY);
    if(fd < 0) {
 int save_errno = errno;
 krb5_set_error_message(context, save_errno, "failed to open %s: %s",
         filename, strerror(save_errno));
 return save_errno;
    }

    len = read(fd, buf, sizeof(buf));
    close(fd);
    if(len < 0) {
 int save_errno = errno;
 krb5_set_error_message(context, save_errno, "error reading %s: %s",
         filename, strerror(save_errno));
 return save_errno;
    }

    ret = decode_EncryptionKey(buf, len, &key, &ret_len);
    memset(buf, 0, sizeof(buf));
    if(ret)
 return ret;






    if(key.keytype == ETYPE_DES_CBC_CRC || key.keytype == ETYPE_DES_CBC_MD5)
 key.keytype = ETYPE_DES_CFB64_NONE;

    ret = hdb_process_master_key(context, 0, &key, 0, mkey);
    krb5_free_keyblock_contents(context, &key);
    return ret;
}
