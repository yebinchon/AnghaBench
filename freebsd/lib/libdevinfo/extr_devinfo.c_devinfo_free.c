
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devinfo_i_rman {struct devinfo_i_rman* dd_location; struct devinfo_i_rman* dd_pnpinfo; struct devinfo_i_rman* dd_drivername; struct devinfo_i_rman* dd_desc; struct devinfo_i_rman* dd_name; } ;
struct devinfo_i_res {struct devinfo_i_res* dd_location; struct devinfo_i_res* dd_pnpinfo; struct devinfo_i_res* dd_drivername; struct devinfo_i_res* dd_desc; struct devinfo_i_res* dd_name; } ;
struct devinfo_i_dev {struct devinfo_i_dev* dd_location; struct devinfo_i_dev* dd_pnpinfo; struct devinfo_i_dev* dd_drivername; struct devinfo_i_dev* dd_desc; struct devinfo_i_dev* dd_name; } ;


 struct devinfo_i_rman* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct devinfo_i_rman*,int ) ;
 int dd_link ;
 int devinfo_dev ;
 scalar_t__ devinfo_generation ;
 scalar_t__ devinfo_initted ;
 int devinfo_res ;
 int devinfo_rman ;
 int dm_link ;
 int dr_link ;
 int free (struct devinfo_i_rman*) ;

void
devinfo_free(void)
{
 struct devinfo_i_dev *dd;
 struct devinfo_i_rman *dm;
 struct devinfo_i_res *dr;

 while ((dd = TAILQ_FIRST(&devinfo_dev)) != ((void*)0)) {
  TAILQ_REMOVE(&devinfo_dev, dd, dd_link);
  free(dd->dd_name);
  free(dd->dd_desc);
  free(dd->dd_drivername);
  free(dd->dd_pnpinfo);
  free(dd->dd_location);
  free(dd);
 }
 while ((dm = TAILQ_FIRST(&devinfo_rman)) != ((void*)0)) {
  TAILQ_REMOVE(&devinfo_rman, dm, dm_link);
  free(dm);
 }
 while ((dr = TAILQ_FIRST(&devinfo_res)) != ((void*)0)) {
  TAILQ_REMOVE(&devinfo_res, dr, dr_link);
  free(dr);
 }
 devinfo_initted = 0;
 devinfo_generation = 0;
}
