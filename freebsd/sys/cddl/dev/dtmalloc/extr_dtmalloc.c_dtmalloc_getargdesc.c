
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_id_t ;
struct TYPE_3__ {int dtargd_ndx; int dtargd_native; } ;
typedef TYPE_1__ dtrace_argdesc_t ;


 int DTRACE_ARGNONE ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
dtmalloc_getargdesc(void *arg, dtrace_id_t id, void *parg, dtrace_argdesc_t *desc)
{
 const char *p = ((void*)0);

 switch (desc->dtargd_ndx) {
 case 0:
  p = "struct malloc_type *";
  break;
 case 1:
  p = "struct malloc_type_internal *";
  break;
 case 2:
  p = "struct malloc_type_stats *";
  break;
 case 3:
  p = "unsigned long";
  break;
 case 4:
  p = "int";
  break;
 default:
  desc->dtargd_ndx = DTRACE_ARGNONE;
  break;
 }

 if (p != ((void*)0))
  strlcpy(desc->dtargd_native, p, sizeof(desc->dtargd_native));

 return;
}
