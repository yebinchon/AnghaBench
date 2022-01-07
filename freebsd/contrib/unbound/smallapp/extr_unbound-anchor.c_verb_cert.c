
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;


 unsigned long X509_FLAG_NO_ISSUER ;
 unsigned long X509_FLAG_NO_SUBJECT ;
 unsigned long X509_FLAG_NO_VALIDITY ;
 int X509_print_ex_fp (int ,int *,int ,unsigned long) ;
 int X509_print_fp (int ,int *) ;
 int printf (char*,char const*) ;
 int stdout ;
 int verb ;

__attribute__((used)) static void
verb_cert(const char* msg, X509* x)
{
 if(verb == 0 || verb == 1) return;
 if(verb == 2) {
  if(msg) printf("%s\n", msg);
  X509_print_ex_fp(stdout, x, 0, (unsigned long)-1
   ^(X509_FLAG_NO_SUBJECT
   |X509_FLAG_NO_ISSUER|X509_FLAG_NO_VALIDITY));
  return;
 }
 if(msg) printf("%s\n", msg);
 X509_print_fp(stdout, x);
}
