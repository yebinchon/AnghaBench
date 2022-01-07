
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOTEMPTY ;
 int ipf_clist ;
 int printf (char*) ;
 scalar_t__ sysctl_ctx_free (int *) ;

__attribute__((used)) static int
ipf_fbsd_sysctl_destroy(void)
{
 if (sysctl_ctx_free(&ipf_clist)) {
  printf("sysctl_ctx_free failed");
  return(ENOTEMPTY);
 }
 return 0;
}
