
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int return_value; int matching; } ;


 int read_archive (struct bsdtar*,char,int *) ;
 scalar_t__ unmatched_inclusions_warn (int ,char*) ;

void
tar_mode_t(struct bsdtar *bsdtar)
{
 read_archive(bsdtar, 't', ((void*)0));
 if (unmatched_inclusions_warn(bsdtar->matching,
     "Not found in archive") != 0)
  bsdtar->return_value = 1;
}
