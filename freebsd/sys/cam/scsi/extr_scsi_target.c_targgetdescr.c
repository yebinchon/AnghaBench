
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct targ_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ num_bufs_used; } ;
struct targ_cmd_descr {TYPE_1__ mapinfo; } ;


 int M_NOWAIT ;
 int M_TARG ;
 struct targ_cmd_descr* malloc (int,int ,int ) ;

__attribute__((used)) static struct targ_cmd_descr *
targgetdescr(struct targ_softc *softc)
{
 struct targ_cmd_descr *descr;

 descr = malloc(sizeof(*descr), M_TARG,
        M_NOWAIT);
 if (descr) {
  descr->mapinfo.num_bufs_used = 0;
 }
 return (descr);
}
