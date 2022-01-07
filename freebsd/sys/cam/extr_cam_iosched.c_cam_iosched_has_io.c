
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending; int max; int queued; } ;
struct cam_iosched_softc {int bio_queue; TYPE_1__ write_stats; TYPE_1__ read_stats; int write_queue; } ;
struct bio {int dummy; } ;


 struct bio* bioq_first (int *) ;
 scalar_t__ cam_iosched_limiter_caniop (TYPE_1__*,struct bio*) ;
 scalar_t__ do_dynamic_iosched ;
 int iosched_debug ;
 int printf (char*,int,int,...) ;

__attribute__((used)) static inline bool
cam_iosched_has_io(struct cam_iosched_softc *isc)
{
 return bioq_first(&isc->bio_queue) != ((void*)0);
}
