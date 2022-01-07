
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpio {int * ppbuff; } ;
struct archive {int dummy; } ;


 int PPBUFF_SIZE ;
 int errno ;
 int lafe_errc (int,int ,char*) ;
 char const* lafe_readpassphrase (char*,int *,int ) ;
 int * malloc (int ) ;

__attribute__((used)) static const char *
passphrase_callback(struct archive *a, void *_client_data)
{
 struct cpio *cpio = (struct cpio *)_client_data;
 (void)a;

 if (cpio->ppbuff == ((void*)0)) {
  cpio->ppbuff = malloc(PPBUFF_SIZE);
  if (cpio->ppbuff == ((void*)0))
   lafe_errc(1, errno, "Out of memory");
 }
 return lafe_readpassphrase("Enter passphrase:",
  cpio->ppbuff, PPBUFF_SIZE);
}
