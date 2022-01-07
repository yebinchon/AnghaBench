
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 int broadcast (char*) ;
 int dumpabort (int ) ;
 int msg (char*,scalar_t__) ;
 scalar_t__ nexttape ;
 int nogripe ;
 scalar_t__ query (char*) ;
 scalar_t__ tapeno ;
 int time (scalar_t__*) ;
 int trewind () ;
 int tstart_writing ;

void
close_rewind()
{
 time_t tstart_changevol, tend_changevol;

 trewind();
 if (nexttape)
  return;
 (void)time((time_t *)&(tstart_changevol));
 if (!nogripe) {
  msg("Change Volumes: Mount volume #%d\n", tapeno+1);
  broadcast("CHANGE DUMP VOLUMES!\a\a\n");
 }
 while (!query("Is the new volume mounted and ready to go?"))
  if (query("Do you want to abort?")) {
   dumpabort(0);

  }
 (void)time((time_t *)&(tend_changevol));
 if ((tstart_changevol != (time_t)-1) && (tend_changevol != (time_t)-1))
  tstart_writing += (tend_changevol - tstart_changevol);
}
