
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_sec {char* name; int nameaddr; } ;
struct lm_info {int nsecs; struct lm_sec* secs; } ;


 int PATH_MAX ;
 int lm_secs_sort (struct lm_info*) ;
 int target_read_string (int ,char**,int ,int*) ;
 int warning (char*,int ) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
fetch_sec_names (struct lm_info *lmi)
{

  int i, errcode;
  struct lm_sec *lms;
  char *name;

  for (i = 0; i < lmi->nsecs; i++)
    {
      lms = lmi->secs + i;
      target_read_string (lms->nameaddr, &name, PATH_MAX, &errcode);
      if (errcode != 0)
 {
   warning ("unable to read shared sec name at 0x%lx", lms->nameaddr);
   name = xstrdup ("");
 }
      lms->name = name;
    }
  lm_secs_sort (lmi);

}
