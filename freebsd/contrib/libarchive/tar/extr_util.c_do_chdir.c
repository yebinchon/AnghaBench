
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int * pending_chdir; } ;


 scalar_t__ chdir (int *) ;
 int free (int *) ;
 int lafe_errc (int,int ,char*,int *) ;

void
do_chdir(struct bsdtar *bsdtar)
{
 if (bsdtar->pending_chdir == ((void*)0))
  return;

 if (chdir(bsdtar->pending_chdir) != 0) {
  lafe_errc(1, 0, "could not chdir to '%s'\n",
      bsdtar->pending_chdir);
 }
 free(bsdtar->pending_chdir);
 bsdtar->pending_chdir = ((void*)0);
}
