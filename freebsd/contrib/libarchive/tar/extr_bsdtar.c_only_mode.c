
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int mode; } ;


 int lafe_errc (int,int ,char*,char const*,int ) ;
 int * strchr (char const*,int ) ;

__attribute__((used)) static void
only_mode(struct bsdtar *bsdtar, const char *opt, const char *valid_modes)
{
 if (strchr(valid_modes, bsdtar->mode) == ((void*)0))
  lafe_errc(1, 0,
      "Option %s is not permitted in mode -%c",
      opt, bsdtar->mode);
}
