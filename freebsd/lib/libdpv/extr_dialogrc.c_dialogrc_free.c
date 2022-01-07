
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {char* str; } ;
struct TYPE_4__ {TYPE_1__ value; int * action; int * directive; } ;


 TYPE_2__* dialogrc_config ;
 int free (char*) ;
 char* gauge_color ;
 int setattr ;

void
dialogrc_free(void)
{
 char *value;
 uint32_t n;

 for (n = 0; dialogrc_config[n].directive != ((void*)0); n++) {
  if (dialogrc_config[n].action != &setattr)
   continue;
  value = dialogrc_config[n].value.str;
  if (value != ((void*)0) && value != gauge_color) {
   free(dialogrc_config[n].value.str);
   dialogrc_config[n].value.str = ((void*)0);
  }
 }
}
