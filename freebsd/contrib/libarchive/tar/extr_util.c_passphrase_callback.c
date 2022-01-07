
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int * ppbuff; } ;
struct archive {int dummy; } ;


 int PPBUFF_SIZE ;
 int errno ;
 int lafe_errc (int,int ,char*) ;
 char const* lafe_readpassphrase (char*,int *,int ) ;
 int * malloc (int ) ;

const char *
passphrase_callback(struct archive *a, void *_client_data)
{
 struct bsdtar *bsdtar = (struct bsdtar *)_client_data;
 (void)a;

 if (bsdtar->ppbuff == ((void*)0)) {
  bsdtar->ppbuff = malloc(PPBUFF_SIZE);
  if (bsdtar->ppbuff == ((void*)0))
   lafe_errc(1, errno, "Out of memory");
 }
 return lafe_readpassphrase("Enter passphrase:",
  bsdtar->ppbuff, PPBUFF_SIZE);
}
