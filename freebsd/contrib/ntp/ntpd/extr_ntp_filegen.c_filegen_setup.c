
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int32 ;
typedef int time_t ;
struct TYPE_4__ {int flag; int type; int * fp; scalar_t__ id_hi; scalar_t__ id_lo; } ;
typedef TYPE_1__ FILEGEN ;


 int DPRINTF (int,char*) ;
 int FGEN_FLAG_ENABLED ;







 int TRUE ;
 scalar_t__ current_time ;
 int fclose (int *) ;
 int filegen_open (TYPE_1__*,scalar_t__,int *) ;
 int getpid () ;
 int time (int *) ;

void
filegen_setup(
 FILEGEN * gen,
 u_int32 now
 )
{
 int current;
 time_t pivot;

 if (!(gen->flag & FGEN_FLAG_ENABLED)) {
  if (((void*)0) != gen->fp) {
   fclose(gen->fp);
   gen->fp = ((void*)0);
  }
  return;
 }

 switch (gen->type) {

 default:
 case 131:
  current = TRUE;
  break;

 case 130:
  current = ((int)gen->id_lo == getpid());
  break;

 case 134:
  current = (gen->id_lo <= current_time) &&
     (gen->id_hi > current_time);
  break;

 case 133:
 case 129:
 case 132:
 case 128:
  current = (gen->id_lo <= now) &&
     (gen->id_hi > now);
  break;
 }




 if (((void*)0) == gen->fp || !current) {
  DPRINTF(1, ("filegen  %0x %u\n", gen->type, now));
  pivot = time(((void*)0));
  filegen_open(gen, now, &pivot);
 }
}
