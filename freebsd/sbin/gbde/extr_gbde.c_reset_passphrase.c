
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_bde_softc {int sha2; } ;


 int SHA512_DIGEST_LENGTH ;
 int memcpy (int ,int ,int ) ;
 int sha2 ;

__attribute__((used)) static void
reset_passphrase(struct g_bde_softc *sc)
{

 memcpy(sc->sha2, sha2, SHA512_DIGEST_LENGTH);
}
