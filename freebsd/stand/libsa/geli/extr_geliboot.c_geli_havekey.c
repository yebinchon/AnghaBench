
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct geli_dev {int dummy; } ;
typedef int mkey ;


 int ENOENT ;
 int G_ELI_DATAIVKEYLEN ;
 int explicit_bzero (int *,int) ;
 scalar_t__ geli_findkey (struct geli_dev*,int *) ;
 scalar_t__ geli_probe (struct geli_dev*,int *,int *) ;

int
geli_havekey(struct geli_dev *gdev)
{
 u_char mkey[G_ELI_DATAIVKEYLEN];
 int err;

 err = ENOENT;
 if (geli_findkey(gdev, mkey) == 0) {
  if (geli_probe(gdev, ((void*)0), mkey) == 0)
   err = 0;
  explicit_bzero(mkey, sizeof(mkey));
 }
 return (err);
}
