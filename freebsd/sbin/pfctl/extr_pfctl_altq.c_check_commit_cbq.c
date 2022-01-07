
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ifname; } ;
struct TYPE_3__ {int root_classes; int default_classes; } ;
struct pfctl_altq {TYPE_2__ pa; TYPE_1__ meta; } ;


 int warnx (char*,int ) ;

__attribute__((used)) static int
check_commit_cbq(int dev, int opts, struct pfctl_altq *if_ppa)
{
 int error = 0;





 if (if_ppa->meta.root_classes != 1) {
  warnx("should have one root queue on %s", if_ppa->pa.ifname);
  error++;
 }
 if (if_ppa->meta.default_classes != 1) {
  warnx("should have one default queue on %s", if_ppa->pa.ifname);
  error++;
 }
 return (error);
}
