
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name2 ;
typedef int name1 ;


 scalar_t__ EEXIST ;
 int EXIT_FAILURE ;
 char* class_name ;
 int err (int ,char*,char*) ;
 scalar_t__ errno ;
 scalar_t__ kldload (char*) ;
 scalar_t__ modfind (char*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void
load_module(void)
{
 char name1[64], name2[64];

 snprintf(name1, sizeof(name1), "g_%s", class_name);
 snprintf(name2, sizeof(name2), "geom_%s", class_name);
 if (modfind(name1) < 0) {

  if (kldload(name2) < 0 || modfind(name1) < 0) {
   if (errno != EEXIST) {
    err(EXIT_FAILURE, "cannot load %s", name2);
   }
  }
 }
}
