
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct stat {scalar_t__ st_ctime; } ;


 int SEEK_SET ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fp ;
 int fseek (int *,int ,int ) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int ptrmoved ;

__attribute__((used)) static void
setac_locked(void)
{
 static time_t lastctime = 0;
 struct stat sbuf;

 ptrmoved = 1;
 if (fp != ((void*)0)) {




  if (fstat(fileno(fp), &sbuf) < 0)
   goto closefp;
  if (lastctime != sbuf.st_ctime) {
   lastctime = sbuf.st_ctime;
closefp:
   fclose(fp);
   fp = ((void*)0);
   return;
  }

  fseek(fp, 0, SEEK_SET);
 }
}
