
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {char mode; } ;


 int lafe_errc (int,int ,char*,char,char) ;

__attribute__((used)) static void
set_mode(struct bsdtar *bsdtar, char opt)
{
 if (bsdtar->mode != '\0' && bsdtar->mode != opt)
  lafe_errc(1, 0,
      "Can't specify both -%c and -%c", opt, bsdtar->mode);
 bsdtar->mode = opt;
}
