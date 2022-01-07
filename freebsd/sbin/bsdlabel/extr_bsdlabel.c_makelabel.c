
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disklabel {int d_packname; } ;


 int bzero (int ,int) ;
 int errx (int,char*,char const*) ;
 struct disklabel* getdiskbyname (char const*) ;
 struct disklabel* getvirginlabel () ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
makelabel(const char *type, struct disklabel *lp)
{
 struct disklabel *dp;

 if (strcmp(type, "auto") == 0)
  dp = getvirginlabel();
 else
  dp = getdiskbyname(type);
 if (dp == ((void*)0))
  errx(1, "%s: unknown disk type", type);
 *lp = *dp;
 bzero(lp->d_packname, sizeof(lp->d_packname));
}
