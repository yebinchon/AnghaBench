
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int queued; } ;
struct TYPE_3__ {int queued; } ;
struct cam_iosched_softc {int current_read_bias; int read_bias; TYPE_2__ read_stats; TYPE_1__ trim_stats; int bio_queue; } ;
struct bio {int dummy; } ;


 scalar_t__ bioq_first (int *) ;
 int cam_iosched_has_more_trim (struct cam_iosched_softc*) ;
 struct bio* cam_iosched_next_trim (struct cam_iosched_softc*) ;
 scalar_t__ do_dynamic_iosched ;
 scalar_t__ iosched_debug ;
 int printf (char*,int,int,int) ;

struct bio *
cam_iosched_get_trim(struct cam_iosched_softc *isc)
{

 if (!cam_iosched_has_more_trim(isc))
  return ((void*)0);
 return cam_iosched_next_trim(isc);
}
