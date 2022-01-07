
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct so_list {char* so_original_name; char* so_name; TYPE_2__* lm_info; } ;
struct lm_info {int secs; } ;
struct TYPE_4__ {int isloader; int nsecs; TYPE_1__* secs; } ;
struct TYPE_3__ {int * name; } ;


 int SO_NAME_MAX_PATH_SIZE ;
 int memcpy (char*,char*,int) ;
 int memset (struct so_list*,int ,int) ;
 int strlen (char*) ;
 TYPE_2__* xmalloc (unsigned int) ;

__attribute__((used)) static void
init_so (struct so_list *so, char *name, int isloader, int nsecs)
{
  int namelen, i;


  memset (so, 0, sizeof *so);


  namelen = strlen (name);
  if (namelen >= SO_NAME_MAX_PATH_SIZE)
    namelen = SO_NAME_MAX_PATH_SIZE - 1;

  memcpy (so->so_original_name, name, namelen);
  so->so_original_name[namelen] = '\0';
  memcpy (so->so_name, so->so_original_name, namelen + 1);


  so->lm_info = xmalloc ((unsigned) &(((struct lm_info *)0)->secs) +
    nsecs * sizeof *so->lm_info);
  so->lm_info->isloader = isloader;
  so->lm_info->nsecs = nsecs;
  for (i = 0; i < nsecs; i++)
    so->lm_info->secs[i].name = ((void*)0);
}
