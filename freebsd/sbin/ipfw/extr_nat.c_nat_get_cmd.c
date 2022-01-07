
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct nat44_cfg_nat {size_t size; int name; } ;
struct TYPE_7__ {int length; } ;
struct TYPE_8__ {int name; TYPE_1__ head; } ;
struct TYPE_9__ {int opheader; TYPE_2__ ntlv; } ;
typedef TYPE_3__ ipfw_obj_header ;


 int ENOMEM ;
 TYPE_3__* calloc (int,size_t) ;
 scalar_t__ do_get3 (int ,int *,size_t*) ;
 int errno ;
 int free (TYPE_3__*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int
nat_get_cmd(char *name, uint16_t cmd, ipfw_obj_header **ooh)
{
 ipfw_obj_header *oh;
 struct nat44_cfg_nat *cfg;
 size_t sz;


 sz = sizeof(*oh) + sizeof(*cfg) + 128;

 for (;;) {
  if ((oh = calloc(1, sz)) == ((void*)0))
   return (ENOMEM);
  cfg = (struct nat44_cfg_nat *)(oh + 1);
  oh->ntlv.head.length = sizeof(oh->ntlv);
  strlcpy(oh->ntlv.name, name, sizeof(oh->ntlv.name));
  strlcpy(cfg->name, name, sizeof(cfg->name));

  if (do_get3(cmd, &oh->opheader, &sz) != 0) {
   sz = cfg->size;
   free(oh);
   if (errno == ENOMEM)
    continue;
   return (errno);
  }

  *ooh = oh;
  break;
 }

 return (0);
}
