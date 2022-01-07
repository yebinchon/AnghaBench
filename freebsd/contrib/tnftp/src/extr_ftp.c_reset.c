
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int cin ;
 int code ;
 int empty (int ,int *,int ) ;
 int getreply (int ) ;
 int lostpeer (int ) ;
 int warn (char*) ;

void
reset(int argc, char *argv[])
{
 int nfnd = 1;

 if (argc == 0 && argv != ((void*)0)) {
  UPRINTF("usage: %s\n", argv[0]);
  code = -1;
  return;
 }
 while (nfnd > 0) {
  if ((nfnd = empty(cin, ((void*)0), 0)) < 0) {
   warn("Error resetting connection");
   code = -1;
   lostpeer(0);
  } else if (nfnd)
   (void)getreply(0);
 }
}
