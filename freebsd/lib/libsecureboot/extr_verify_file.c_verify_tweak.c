
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef scalar_t__ off_t ;


 int DEBUG_PRINTF (int,char*) ;
 int SEEK_SET ;
 int VE_MUST ;
 int VE_WANT ;
 int lseek (int,int ,int ) ;
 int panic (char*) ;
 unsigned char* read_fd (int,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ strstr (char*,char*) ;
 int ve_self_tests () ;
 size_t ve_trust_anchors_add_buf (unsigned char*,int ) ;
 size_t ve_trust_anchors_revoke (unsigned char*,int ) ;

__attribute__((used)) static void
verify_tweak(int fd, off_t off, struct stat *stp,
    char *tweak, int *accept_no_fp,
    int *verbose, int *verifying)
{
 if (strcmp(tweak, "off") == 0) {
  *verifying = 0;
 } else if (strcmp(tweak, "strict") == 0) {

  *accept_no_fp = VE_WANT;
  *verbose = 1;

  if (!ve_self_tests()) {
   panic("verify self tests failed");
  }
 } else if (strcmp(tweak, "modules") == 0) {

  *accept_no_fp = VE_MUST;
 } else if (strcmp(tweak, "try") == 0) {

  *accept_no_fp = VE_MUST + 1;
 } else if (strcmp(tweak, "verbose") == 0) {
  *verbose = 1;
 } else if (strcmp(tweak, "quiet") == 0) {
  *verbose = 0;
 } else if (strncmp(tweak, "trust", 5) == 0) {

  unsigned char *ucp;
  size_t num;

  if (off > 0)
   lseek(fd, 0, SEEK_SET);
  ucp = read_fd(fd, stp->st_size);
  if (ucp == ((void*)0))
   return;
  if (strstr(tweak, "revoke")) {
   num = ve_trust_anchors_revoke(ucp, stp->st_size);
   DEBUG_PRINTF(3, ("revoked %d trust anchors\n",
    (int) num));
  } else {
   num = ve_trust_anchors_add_buf(ucp, stp->st_size);
   DEBUG_PRINTF(3, ("added %d trust anchors\n",
    (int) num));
  }
 }
}
