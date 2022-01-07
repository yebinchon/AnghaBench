
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int EOPNOTSUPP ;
 int GID_WHEEL ;


 int UID_ROOT ;
 int destroy_dev (int ) ;
 int krping_cdevsw ;
 int krping_dev ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int printf (char*) ;

__attribute__((used)) static int
krping_loader(struct module *m, int what, void *arg)
{
 int err = 0;

 switch (what) {
 case 129:
  krping_dev = make_dev(&krping_cdevsw, 0, UID_ROOT, GID_WHEEL,
     0600, "krping");
  printf("Krping device loaded.\n");
  break;
 case 128:
  destroy_dev(krping_dev);
  printf("Krping device unloaded.\n");
  break;
 default:
  err = EOPNOTSUPP;
  break;
 }

 return (err);
}
