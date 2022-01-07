
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int enc_softc_t ;
typedef int enc_cache_t ;


 int ENC_VLOG (int *,char*) ;
 int ENODEV ;

__attribute__((used)) static int
ses_get_elm_addlstatus_fc(enc_softc_t *enc, enc_cache_t *enc_cache,
     uint8_t *buf, int bufsiz)
{
 ENC_VLOG(enc, "FC Device Support Stubbed in Additional Status Page\n");
 return (ENODEV);
}
