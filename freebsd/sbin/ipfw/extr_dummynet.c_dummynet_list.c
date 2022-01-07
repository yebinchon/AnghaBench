
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct dn_sch {int dummy; } ;
struct dn_id {int id; int len; int subtype; } ;
struct dn_fs {int dummy; } ;
struct dn_flow {int dummy; } ;
struct TYPE_2__ {int do_pipe; } ;


 int DN_API_VERSION ;
 int DN_CMD_GET ;
 int DN_FS ;
 int DN_LINK ;
 int DN_SCH ;
 int IP_DUMMYNET3 ;
 int O_NEXT (struct dn_id*,int) ;
 int bcopy (struct dn_id*,struct dn_id*,int) ;
 TYPE_1__ co ;
 int do_cmd (int ,struct dn_id*,uintptr_t) ;
 int free (struct dn_id*) ;
 int list_pipes (struct dn_id*,int ) ;
 int oid_fill (struct dn_id*,int,int ,int ) ;
 int parse_range (int,char**,int *,int) ;
 struct dn_id* safe_calloc (int,int) ;
 struct dn_id* safe_realloc (struct dn_id*,int) ;

void
dummynet_list(int ac, char *av[], int show_counters)
{
 struct dn_id *oid, *x = ((void*)0);
 int ret, i;
 int n;
 u_int buflen, l;
 u_int max_size;

 (void)show_counters;
 ac--;
 av++;

 n = parse_range(ac, av, ((void*)0), 0);


 l = sizeof(*oid) + sizeof(uint32_t) * n * 2;
 oid = safe_calloc(1, l);
 oid_fill(oid, l, DN_CMD_GET, DN_API_VERSION);

 if (n > 0)
  parse_range(ac, av, (uint32_t *)(oid + 1), n*2);
 max_size = sizeof(struct dn_fs);
 if (max_size < sizeof(struct dn_sch))
  max_size = sizeof(struct dn_sch);
 if (max_size < sizeof(struct dn_flow))
  max_size = sizeof(struct dn_flow);

 switch (co.do_pipe) {
 case 1:
  oid->subtype = DN_LINK;
  break;
 case 2:
  oid->subtype = DN_FS;
  break;
 case 3:
  oid->subtype = DN_SCH;
  break;
 }
 if (n > 0) {
  buflen = 4*1024;
 } else {
  ret = do_cmd(-IP_DUMMYNET3, oid, (uintptr_t)&l);
  if (ret != 0 || oid->id <= sizeof(*oid))
   goto done;
  buflen = oid->id + max_size;
  oid->len = sizeof(*oid);
 }

 for (i = 0; i < 20; i++) {
  l = buflen;
  x = safe_realloc(x, l);
  bcopy(oid, x, oid->len);
  ret = do_cmd(-IP_DUMMYNET3, x, (uintptr_t)&l);
  if (ret != 0 || x->id <= sizeof(*oid))
   goto done;
  if (l + max_size <= buflen)
   break;
  buflen *= 2;
 }
 list_pipes(x, O_NEXT(x, l));
done:
 if (x)
  free(x);
 free(oid);
}
