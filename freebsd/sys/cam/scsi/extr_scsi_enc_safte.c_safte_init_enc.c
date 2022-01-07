
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct scfg {scalar_t__ flag2; scalar_t__ flag1; } ;
struct TYPE_5__ {struct scfg* enc_private; } ;
typedef TYPE_1__ enc_softc_t ;


 int DELAY (int) ;
 int ENXIO ;

 int enc_runcmd (TYPE_1__*,char*,int,int *,int ) ;
 int safte_set_enc_status (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
safte_init_enc(enc_softc_t *enc)
{
 struct scfg *cfg;
 int err;
 static char cdb0[6] = { 128 };

 cfg = enc->enc_private;
 if (cfg == ((void*)0))
  return (ENXIO);

 err = enc_runcmd(enc, cdb0, 6, ((void*)0), 0);
 if (err) {
  return (err);
 }
 DELAY(5000);
 cfg->flag1 = 0;
 cfg->flag2 = 0;
 err = safte_set_enc_status(enc, 0, 1);
 return (err);
}
