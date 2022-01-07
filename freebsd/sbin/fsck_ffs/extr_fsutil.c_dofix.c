
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inodesc {int id_fix; int id_number; int id_type; } ;


 int ALTERED ;
 int DATA ;

 int EEXIT ;



 int direrror (int ,char const*) ;
 int errx (int ,char*,int) ;
 int preen ;
 int printf (char*) ;
 int pwarn (char*,char const*) ;
 int reply (char*) ;

int
dofix(struct inodesc *idesc, const char *msg)
{

 switch (idesc->id_fix) {

 case 131:
  if (idesc->id_type == DATA)
   direrror(idesc->id_number, msg);
  else
   pwarn("%s", msg);
  if (preen) {
   printf(" (SALVAGED)\n");
   idesc->id_fix = 130;
   return (ALTERED);
  }
  if (reply("SALVAGE") == 0) {
   idesc->id_fix = 128;
   return (0);
  }
  idesc->id_fix = 130;
  return (ALTERED);

 case 130:
  return (ALTERED);

 case 128:
 case 129:
  return (0);

 default:
  errx(EEXIT, "UNKNOWN INODESC FIX MODE %d", idesc->id_fix);
 }

 return (0);
}
