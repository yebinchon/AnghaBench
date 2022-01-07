
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int temp ;
typedef int FILE ;


 int MD5KEYS ;
 int MD5SIZE ;
 int RAND_bytes (char*,int) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fheader (char*,char const*,int ) ;
 int fprintf (int *,char*,...) ;
 int groupname ;
 int ntp_crypto_random_buf (char*,int) ;
 int stderr ;

int
gen_md5(
 const char *id
 )
{
 u_char md5key[MD5SIZE + 1];
 FILE *str;
 int i, j;






 str = fheader("MD5key", id, groupname);
 for (i = 1; i <= MD5KEYS; i++) {
  for (j = 0; j < MD5SIZE; j++) {
   u_char temp;

   while (1) {
    int rc;

    rc = ntp_crypto_random_buf(
        &temp, sizeof(temp));
    if (-1 == rc) {
     fprintf(stderr, "ntp_crypto_random_buf() failed.\n");
     exit (-1);
    }
    if (temp == '#')
     continue;

    if (temp > 0x20 && temp < 0x7f)
     break;
   }
   md5key[j] = temp;
  }
  md5key[j] = '\0';
  fprintf(str, "%2d MD5 %s  # MD5 key\n", i,
      md5key);
 }
 fclose(str);
 return (1);
}
