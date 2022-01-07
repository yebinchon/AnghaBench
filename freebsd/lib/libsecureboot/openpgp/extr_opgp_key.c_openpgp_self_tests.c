
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ openpgp_trust_init () ;
 int openpgp_verify (char*,unsigned char*,size_t,unsigned char*,size_t,int ) ;
 int printf (char*,char*) ;
 char* strdup (char const*) ;
 size_t strlen (char*) ;
 char** ta_ASC ;
 char** vc_ASC ;

int
openpgp_self_tests(void)
{
 static int rc = -1;
 return (rc);
}
