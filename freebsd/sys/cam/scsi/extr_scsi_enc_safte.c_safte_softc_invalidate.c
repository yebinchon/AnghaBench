
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scfg {int requests; } ;
struct TYPE_3__ {struct scfg* enc_private; } ;
typedef TYPE_1__ enc_softc_t ;


 int ENXIO ;
 int safte_terminate_control_requests (int *,int ) ;

__attribute__((used)) static void
safte_softc_invalidate(enc_softc_t *enc)
{
 struct scfg *cfg;

 cfg = enc->enc_private;
 safte_terminate_control_requests(&cfg->requests, ENXIO);
}
