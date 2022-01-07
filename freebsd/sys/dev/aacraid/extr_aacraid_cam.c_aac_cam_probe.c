
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_cam {TYPE_1__* inf; } ;
typedef int device_t ;
struct TYPE_2__ {int aac_sc; } ;


 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 scalar_t__ device_get_softc (int ) ;
 int fwprintf (int ,char*,char*) ;

__attribute__((used)) static int
aac_cam_probe(device_t dev)
{
 struct aac_cam *camsc;

 camsc = (struct aac_cam *)device_get_softc(dev);
 if (!camsc->inf)
  return (0);
 fwprintf(camsc->inf->aac_sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 return (0);
}
