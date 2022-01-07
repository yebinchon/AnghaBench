
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct cpsw_softc {int dummy; } ;


 int CPSW_ALE_TBLCTL ;
 int CPSW_ALE_TBLW0 ;
 int CPSW_ALE_TBLW1 ;
 int CPSW_ALE_TBLW2 ;
 int cpsw_read_4 (struct cpsw_softc*,int ) ;
 int cpsw_write_4 (struct cpsw_softc*,int ,int) ;

__attribute__((used)) static void
cpsw_ale_read_entry(struct cpsw_softc *sc, uint16_t idx, uint32_t *ale_entry)
{
 cpsw_write_4(sc, CPSW_ALE_TBLCTL, idx & 1023);
 ale_entry[0] = cpsw_read_4(sc, CPSW_ALE_TBLW0);
 ale_entry[1] = cpsw_read_4(sc, CPSW_ALE_TBLW1);
 ale_entry[2] = cpsw_read_4(sc, CPSW_ALE_TBLW2);
}
