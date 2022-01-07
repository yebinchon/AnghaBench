
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int periph_data; } ;
struct TYPE_7__ {TYPE_2__ qos; } ;
union ccb {TYPE_3__ ccb_h; } ;
struct TYPE_5__ {int pending; int out; int errs; } ;
struct TYPE_8__ {int pending; int out; int errs; } ;
struct cam_iosched_softc {scalar_t__ max_lat; int latarg; int (* latfcn ) (int ,scalar_t__,struct bio*) ;TYPE_1__ trim_stats; TYPE_4__ read_stats; TYPE_4__ write_stats; } ;
struct bio {int bio_cmd; int bio_flags; int bio_bcount; } ;
typedef scalar_t__ sbintime_t ;


 int BIO_DELETE ;
 int BIO_ERROR ;
 int BIO_FLUSH ;
 int BIO_READ ;
 int BIO_WRITE ;
 int cam_iosched_io_metric_update (struct cam_iosched_softc*,scalar_t__,int,int ) ;
 int cam_iosched_limiter_iodone (TYPE_4__*,struct bio*) ;
 scalar_t__ cam_iosched_sbintime_t (int ) ;
 int do_dynamic_iosched ;
 int iosched_debug ;
 int printf (char*,...) ;
 int stub1 (int ,scalar_t__,struct bio*) ;

int
cam_iosched_bio_complete(struct cam_iosched_softc *isc, struct bio *bp,
    union ccb *done_ccb)
{
 int retval = 0;
 return retval;
}
