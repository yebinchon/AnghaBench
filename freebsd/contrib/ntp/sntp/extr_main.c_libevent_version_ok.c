
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ev_uint32_t ;


 char* LIBEVENT_VERSION ;
 int LIBEVENT_VERSION_NUMBER ;
 char* event_get_version () ;
 int event_get_version_number () ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

int
libevent_version_ok(void)
{
 ev_uint32_t v_compile_maj;
 ev_uint32_t v_run_maj;

 v_compile_maj = LIBEVENT_VERSION_NUMBER & 0xffff0000;
 v_run_maj = event_get_version_number() & 0xffff0000;
 if (v_compile_maj != v_run_maj) {
  fprintf(stderr,
   "Incompatible libevent versions: have %s, built with %s\n",
   event_get_version(),
   LIBEVENT_VERSION);
  return 0;
 }
 return 1;
}
