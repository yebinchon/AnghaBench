
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aac_softc {int flags; } ;
struct TYPE_3__ {int largeLBA; int JBODSupport; } ;
struct TYPE_4__ {scalar_t__ fValue; TYPE_1__ fBits; } ;
struct aac_features {TYPE_2__ feat; } ;
typedef int f ;
typedef int caddr_t ;


 int AAC_FLAGS_LBA_64BIT ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int copyin (int ,struct aac_features*,int) ;
 int copyout (struct aac_features*,int ,int) ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static int
aac_supported_features(struct aac_softc *sc, caddr_t uptr)
{
 struct aac_features f;
 int error;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 if ((error = copyin(uptr, &f, sizeof (f))) != 0)
  return (error);
  if (f.feat.fValue == 0) {
  f.feat.fBits.largeLBA =
      (sc->flags & AAC_FLAGS_LBA_64BIT) ? 1 : 0;
  f.feat.fBits.JBODSupport = 1;

 } else {
  if (f.feat.fBits.largeLBA)
   f.feat.fBits.largeLBA =
       (sc->flags & AAC_FLAGS_LBA_64BIT) ? 1 : 0;

 }

 error = copyout(&f, uptr, sizeof (f));
 return (error);
}
