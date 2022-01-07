
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i ;
typedef int buf ;
typedef char DesData ;
typedef int DES_key_schedule ;


 int DES_DECRYPT ;
 int DES_cbc_encrypt (char*,char*,int,int *,char*,int ) ;
 int DES_key_sched (char*,int *) ;
 int memset (char*,int ,int) ;
 int strlen (char*) ;

void
pk_decode(char *in, char *out, DesData *key)
{
 char buf[256];
 DesData i;
 DES_key_schedule k;
 int n1,n2,op;
 size_t l;

 memset(&i,0,sizeof(i));
 memset(buf,0,sizeof(buf));
 for (l=0,op=0;l<strlen(in)/2;l++,op+=2) {
  if (in[op] > '9')
   n1 = in[op] - 'A' + 10;
  else
   n1 = in[op] - '0';
  if (in[op+1] > '9')
   n2 = in[op+1] - 'A' + 10;
  else
   n2 = in[op+1] - '0';
  buf[l] = n1*16 +n2;
 }
 DES_key_sched(key, &k);
 DES_cbc_encrypt(buf, out, strlen(in) / 2, &k, &i, DES_DECRYPT);
 out[strlen(in)/2] = '\0';
}
