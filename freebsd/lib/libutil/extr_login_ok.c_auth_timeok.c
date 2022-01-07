
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int dummy; } ;
struct login_time {int dummy; } ;
typedef int login_cap_t ;


 int free (struct login_time*) ;
 int in_ltms (struct login_time*,struct tm*,int *) ;
 struct tm* localtime (scalar_t__*) ;
 struct login_time* login_timelist (int *,char*,int*,struct login_time**) ;

int
auth_timeok(login_cap_t *lc, time_t t)
{
    int rc = 1;

    if (lc != ((void*)0) && t != (time_t)0 && t != (time_t)-1) {
 struct tm *tptr;

 static int ltimesno = 0;
 static struct login_time *ltimes = ((void*)0);

 if ((tptr = localtime(&t)) != ((void*)0)) {
     struct login_time *lt;

   lt = login_timelist(lc, "times.allow", &ltimesno, &ltimes);
   if (lt != ((void*)0) && in_ltms(lt, tptr, ((void*)0)) == -1)
       rc = 0;
   else {

       lt = login_timelist(lc, "times.deny", &ltimesno, &ltimes);
       if (lt != ((void*)0) && in_ltms(lt, tptr, ((void*)0)) != -1)
    rc = 0;
   }
   if (ltimes) {
       free(ltimes);
       ltimes = ((void*)0);
       ltimesno = 0;
   }
 }
    }

    return rc;
}
