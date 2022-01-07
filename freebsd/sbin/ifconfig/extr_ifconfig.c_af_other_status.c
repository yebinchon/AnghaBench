
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct afswtch {scalar_t__ af_af; int (* af_other_status ) (int) ;struct afswtch* af_next; } ;
typedef int afmask ;


 int AF_MAX ;
 scalar_t__ AF_UNSPEC ;
 int NBBY ;
 struct afswtch* afs ;
 int howmany (int ,int ) ;
 scalar_t__ isset (int *,scalar_t__) ;
 int memset (int *,int ,int) ;
 int setbit (int *,scalar_t__) ;
 int stub1 (int) ;

__attribute__((used)) static void
af_other_status(int s)
{
 struct afswtch *afp;
 uint8_t afmask[howmany(AF_MAX, NBBY)];

 memset(afmask, 0, sizeof(afmask));
 for (afp = afs; afp != ((void*)0); afp = afp->af_next) {
  if (afp->af_other_status == ((void*)0))
   continue;
  if (afp->af_af != AF_UNSPEC && isset(afmask, afp->af_af))
   continue;
  afp->af_other_status(s);
  setbit(afmask, afp->af_af);
 }
}
