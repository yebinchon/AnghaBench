
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 int EX_OSERR ;
 scalar_t__ errno ;
 int kldload (char*) ;
 int modfind (char*) ;
 int pjdlog_exit (int ,char*) ;

__attribute__((used)) static void
g_gate_load(void)
{

 if (modfind("g_gate") == -1) {

  if (kldload("geom_gate") == -1 || modfind("g_gate") == -1) {
   if (errno != EEXIST) {
    pjdlog_exit(EX_OSERR,
        "Unable to load geom_gate module");
   }
  }
 }
}
