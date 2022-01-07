
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int next_idx ;
struct TYPE_11__ {int version; } ;
struct TYPE_8__ {TYPE_6__ opheader; int ntlv; } ;
typedef TYPE_2__ ipfw_obj_header ;
struct TYPE_7__ {int length; int type; } ;
struct TYPE_9__ {TYPE_1__ head; } ;
typedef TYPE_3__ ipfw_obj_data ;
struct TYPE_10__ {int name; int set; } ;
typedef TYPE_4__ ipfw_nat64lsn_cfg ;


 int ESRCH ;
 int EX_OSERR ;
 int IPFW_TLV_OBJDATA ;
 int IP_FW_NAT64LSN_LIST_STATES ;
 void* calloc (int,size_t) ;
 scalar_t__ do_get3 (int ,TYPE_6__*,size_t*) ;
 int err (int ,char*) ;
 int free (void*) ;
 int memset (void*,int ,size_t) ;
 int nat64lsn_fill_ntlv (int *,int ,int ) ;
 int nat64lsn_print_states (void*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int
nat64lsn_states_cb(ipfw_nat64lsn_cfg *cfg, const char *name, uint8_t set)
{
 ipfw_obj_header *oh;
 ipfw_obj_data *od;
 void *buf;
 uint64_t next_idx;
 size_t sz;

 if (name != ((void*)0) && strcmp(cfg->name, name) != 0)
  return (ESRCH);

 if (set != 0 && cfg->set != set)
  return (ESRCH);

 next_idx = 0;
 sz = 4096;
 if ((buf = calloc(1, sz)) == ((void*)0))
  err(EX_OSERR, ((void*)0));
 do {
  oh = (ipfw_obj_header *)buf;
  oh->opheader.version = 1;
  od = (ipfw_obj_data *)(oh + 1);
  nat64lsn_fill_ntlv(&oh->ntlv, cfg->name, set);
  od->head.type = IPFW_TLV_OBJDATA;
  od->head.length = sizeof(*od) + sizeof(next_idx);
  *((uint64_t *)(od + 1)) = next_idx;
  if (do_get3(IP_FW_NAT64LSN_LIST_STATES, &oh->opheader, &sz))
   err(EX_OSERR, "Error reading nat64lsn states");
  next_idx = nat64lsn_print_states(buf);
  sz = 4096;
  memset(buf, 0, sz);
 } while (next_idx != 0xFF);

 free(buf);
 return (0);
}
