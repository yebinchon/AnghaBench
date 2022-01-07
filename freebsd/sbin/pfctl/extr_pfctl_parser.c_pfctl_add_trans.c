
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trans ;
struct pfr_buffer {int dummy; } ;
struct pfioc_trans_e {int rs_num; int anchor; } ;


 int bzero (struct pfioc_trans_e*,int) ;
 int errx (int,char*) ;
 int pfr_buf_add (struct pfr_buffer*,struct pfioc_trans_e*) ;
 int strlcpy (int ,char const*,int) ;

int
pfctl_add_trans(struct pfr_buffer *buf, int rs_num, const char *anchor)
{
 struct pfioc_trans_e trans;

 bzero(&trans, sizeof(trans));
 trans.rs_num = rs_num;
 if (strlcpy(trans.anchor, anchor,
     sizeof(trans.anchor)) >= sizeof(trans.anchor))
  errx(1, "pfctl_add_trans: strlcpy");

 return pfr_buf_add(buf, &trans);
}
