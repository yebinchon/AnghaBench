
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int md_flags; } ;
struct geli_dev {char* name; TYPE_1__ md; } ;


 int GELI_PW_MAXLEN ;
 int G_ELI_FLAG_GELIDISPLAYPASS ;
 scalar_t__ geli_probe (struct geli_dev*,char*,int *) ;
 int printf (char*,...) ;
 int pwgets (char*,int ,int) ;

int
geli_passphrase(struct geli_dev *gdev, char *pw)
{
 int i;


 for (i = 0; i < 3; i++) {

  if (i == 0 && pw[0] != '\0') {
   if (geli_probe(gdev, pw, ((void*)0)) == 0) {
    return (0);
   }
  }
  printf("GELI Passphrase for %s ", gdev->name);
  pwgets(pw, GELI_PW_MAXLEN,
      (gdev->md.md_flags & G_ELI_FLAG_GELIDISPLAYPASS) == 0);
  printf("\n");
  if (geli_probe(gdev, pw, ((void*)0)) == 0) {
   return (0);
  }
 }

 return (1);
}
