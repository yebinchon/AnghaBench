
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int tbl ;
struct pfr_table {int pfrt_flags; int pfrt_anchor; int pfrt_name; } ;
struct pfr_buffer {int pfrb_size; int pfrb_caddr; } ;


 int PFR_FLAG_ADDRSTOO ;
 int bzero (struct pfr_table*,int) ;
 int errx (int,char*) ;
 int pfr_ina_define (struct pfr_table*,int ,int ,int *,int *,int ,int ) ;
 int strlcpy (int ,char const*,int) ;

int
pfctl_define_table(char *name, int flags, int addrs, const char *anchor,
    struct pfr_buffer *ab, u_int32_t ticket)
{
 struct pfr_table tbl;

 bzero(&tbl, sizeof(tbl));
 if (strlcpy(tbl.pfrt_name, name, sizeof(tbl.pfrt_name)) >=
     sizeof(tbl.pfrt_name) || strlcpy(tbl.pfrt_anchor, anchor,
     sizeof(tbl.pfrt_anchor)) >= sizeof(tbl.pfrt_anchor))
  errx(1, "pfctl_define_table: strlcpy");
 tbl.pfrt_flags = flags;

 return pfr_ina_define(&tbl, ab->pfrb_caddr, ab->pfrb_size, ((void*)0),
     ((void*)0), ticket, addrs ? PFR_FLAG_ADDRSTOO : 0);
}
