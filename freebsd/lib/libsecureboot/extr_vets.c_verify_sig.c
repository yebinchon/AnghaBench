
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int pbuf ;
typedef int cn_buf ;
struct TYPE_8__ {int key_type; } ;
typedef TYPE_1__ br_x509_pkey ;
struct TYPE_9__ {unsigned char* oid; char* buf; int len; scalar_t__ status; } ;
typedef TYPE_2__ br_name_element ;




 int DEBUG_PRINTF (int,char*) ;
 int MAXPATHLEN ;
 int printf (char*,char*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strcpy (char*,char*) ;
 size_t strlcpy (char*,char const*,int) ;
 char* ve_error_get () ;
 unsigned char* verify_ec (TYPE_1__*,char*,char const*) ;
 unsigned char* verify_rsa (TYPE_1__*,char*,char const*) ;
 TYPE_1__* verify_signer (char*,TYPE_2__*,int) ;
 int xfreepkey (TYPE_1__*) ;

unsigned char *
verify_sig(const char *sigfile, int flags)
{
 br_x509_pkey *pk;
 br_name_element cn;
 char cn_buf[80];
 unsigned char cn_oid[4];
 char pbuf[MAXPATHLEN];
 char *cp;
 unsigned char *ucp;
 size_t n;

 DEBUG_PRINTF(5, ("verify_sig: %s\n", sigfile));
 n = strlcpy(pbuf, sigfile, sizeof(pbuf));
 if (n > (sizeof(pbuf) - 5) || strcmp(&sigfile[n - 3], "sig") != 0)
  return (((void*)0));
 cp = strcpy(&pbuf[n - 3], "certs");




 cn_oid[0] = 3;
 cn_oid[1] = 0x55;
 cn_oid[2] = 4;
 cn_oid[3] = 3;
 cn.oid = cn_oid;
 cn.buf = cn_buf;
 cn.len = sizeof(cn_buf);

 pk = verify_signer(pbuf, &cn, 1);
 if (!pk) {
  printf("cannot verify: %s: %s\n", pbuf, ve_error_get());
  return (((void*)0));
 }
 for (; cp > pbuf; cp--) {
  if (*cp == '.') {
   *cp = '\0';
   break;
  }
 }
 switch (pk->key_type) {
 default:
  ucp = ((void*)0);
 }
 xfreepkey(pk);
 if (!ucp) {
  printf("Unverified %s (%s)\n", pbuf,
      cn.status ? cn_buf : "unknown");
 } else if ((flags & 1) != 0) {
  printf("Verified %s signed by %s\n", pbuf,
      cn.status ? cn_buf : "someone we trust");
 }
 return (ucp);
}
