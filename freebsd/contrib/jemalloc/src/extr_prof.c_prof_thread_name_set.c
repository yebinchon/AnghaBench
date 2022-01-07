
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_3__ {char* thread_name; } ;
typedef TYPE_1__ prof_tdata_t ;


 int EAGAIN ;
 int EFAULT ;
 int idalloctm (int ,char*,int *,int *,int,int) ;
 int isblank (char) ;
 int isgraph (char) ;
 TYPE_1__* prof_tdata_get (int *,int) ;
 char* prof_thread_name_alloc (int ,char const*) ;
 scalar_t__ strlen (char*) ;
 int tsd_tsdn (int *) ;

int
prof_thread_name_set(tsd_t *tsd, const char *thread_name) {
 prof_tdata_t *tdata;
 unsigned i;
 char *s;

 tdata = prof_tdata_get(tsd, 1);
 if (tdata == ((void*)0)) {
  return EAGAIN;
 }


 if (thread_name == ((void*)0)) {
  return EFAULT;
 }
 for (i = 0; thread_name[i] != '\0'; i++) {
  char c = thread_name[i];
  if (!isgraph(c) && !isblank(c)) {
   return EFAULT;
  }
 }

 s = prof_thread_name_alloc(tsd_tsdn(tsd), thread_name);
 if (s == ((void*)0)) {
  return EAGAIN;
 }

 if (tdata->thread_name != ((void*)0)) {
  idalloctm(tsd_tsdn(tsd), tdata->thread_name, ((void*)0), ((void*)0), 1,
      1);
  tdata->thread_name = ((void*)0);
 }
 if (strlen(s) > 0) {
  tdata->thread_name = s;
 }
 return 0;
}
