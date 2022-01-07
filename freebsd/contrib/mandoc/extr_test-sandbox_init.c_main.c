
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SANDBOX_NAMED ;
 int kSBXProfileNoInternet ;
 int sandbox_free_error (char*) ;
 int sandbox_init (int ,int ,char**) ;

int
main(void)
{
 char *ep;
 int rc;

 rc = sandbox_init(kSBXProfileNoInternet, SANDBOX_NAMED, &ep);
 if (-1 == rc)
  sandbox_free_error(ep);
 return(-1 == rc);
}
