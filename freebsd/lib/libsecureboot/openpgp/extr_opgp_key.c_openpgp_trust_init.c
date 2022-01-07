
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OpenPGP_key ;


 int free (char*) ;
 int * load_key_buf (unsigned char*,size_t) ;
 int openpgp_trust_add (int *) ;
 char* strdup (char const*) ;
 size_t strlen (char*) ;
 char** ta_ASC ;

int
openpgp_trust_init(void)
{
 static int once = -1;







 if (once < 0) {
  once = 0;
 }
 return (once);
}
