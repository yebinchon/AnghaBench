
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i ;
typedef int buf ;
typedef char DesData ;
typedef int DES_key_schedule ;


 int DES_ENCRYPT ;
 int DES_cbc_encrypt (char*,char*,int,int *,char*,int ) ;
 int DES_key_sched (char*,int *) ;
 char* hextab ;
 int memset (char*,int ,int) ;
 int strlen (char*) ;

void
pk_encode(char *in, char *out, DesData *key)
{
 char buf[256];
 DesData i;
 DES_key_schedule k;
 int l,op,deslen;

 memset(&i,0,sizeof(i));
 memset(buf,0,sizeof(buf));
 deslen = ((strlen(in) + 7)/8)*8;
 DES_key_sched(key, &k);
 DES_cbc_encrypt(in, buf, deslen, &k, &i, DES_ENCRYPT);
 for (l=0,op=0;l<deslen;l++) {
  out[op++] = hextab[(buf[l] & 0xf0) >> 4];
  out[op++] = hextab[(buf[l] & 0x0f)];
 }
 out[op] = '\0';
}
