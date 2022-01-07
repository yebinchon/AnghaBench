
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
typedef int recno_t ;
struct TYPE_13__ {int (* put ) (TYPE_4__*,TYPE_3__*,TYPE_3__*,int ) ;} ;
struct TYPE_12__ {int* data; int size; } ;
struct TYPE_11__ {int* l_lp; int l_cur; int l_high; TYPE_4__* log; int l_cursor; int l_len; } ;
struct TYPE_10__ {int cno; int lno; TYPE_2__* ep; } ;
typedef TYPE_1__ SCR ;
typedef int MARK ;
typedef TYPE_2__ EXF ;
typedef TYPE_3__ DBT ;


 int BINC_RETC (TYPE_1__*,int*,int ,int) ;
 int LOG_CURSOR_INIT ;
 int LOG_ERR ;
 int TRACE (TYPE_1__*,char*,int,char*,int ,int ) ;
 int memmove (int*,int *,int) ;
 int stub1 (TYPE_4__*,TYPE_3__*,TYPE_3__*,int ) ;

__attribute__((used)) static int
log_cursor1(
 SCR *sp,
 int type)
{
 DBT data, key;
 EXF *ep;

 ep = sp->ep;

 BINC_RETC(sp, ep->l_lp, ep->l_len, sizeof(u_char) + sizeof(MARK));
 ep->l_lp[0] = type;
 memmove(ep->l_lp + sizeof(u_char), &ep->l_cursor, sizeof(MARK));

 key.data = &ep->l_cur;
 key.size = sizeof(recno_t);
 data.data = ep->l_lp;
 data.size = sizeof(u_char) + sizeof(MARK);
 if (ep->log->put(ep->log, &key, &data, 0) == -1)
  LOG_ERR;







 ep->l_high = ++ep->l_cur;

 return (0);
}
