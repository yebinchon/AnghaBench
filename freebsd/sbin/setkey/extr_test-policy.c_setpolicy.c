
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int ipsec_get_policylen (char*) ;
 int ipsec_set_policy (char*,int,char*) ;
 char* ipsec_strerror () ;
 char* malloc (int) ;
 int perror (char*) ;
 int printf (char*,char*) ;

char *setpolicy(char *req)
{
 int len;
 char *buf;

 if ((len = ipsec_get_policylen(req)) < 0) {
  printf("ipsec_get_policylen: %s\n", ipsec_strerror());
  return ((void*)0);
 }

 if ((buf = malloc(len)) == ((void*)0)) {
  perror("malloc");
  return ((void*)0);
 }

 if ((len = ipsec_set_policy(buf, len, req)) < 0) {
  printf("ipsec_set_policy: %s\n", ipsec_strerror());
  free(buf);
  return ((void*)0);
 }

 return buf;
}
