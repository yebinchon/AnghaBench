
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 int EXIT_FAILURE ;
 scalar_t__ errno ;
 int errx (int ,char*) ;
 int kldload (char*) ;
 int modfind (char*) ;

void
g_gate_load_module(void)
{

 if (modfind("g_gate") == -1) {

  if (kldload("geom_gate") == -1 || modfind("g_gate") == -1) {
   if (errno != EEXIST) {
    errx(EXIT_FAILURE,
        "geom_gate module not available!");
   }
  }
 }
}
