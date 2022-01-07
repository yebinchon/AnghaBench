
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_13__ {scalar_t__ ep; TYPE_1__* gp; } ;
struct TYPE_12__ {size_t len; int lb; } ;
struct TYPE_11__ {TYPE_3__* ccl_sp; } ;
typedef TYPE_2__ TEXT ;
typedef TYPE_3__ SCR ;
typedef int CHAR_T ;


 int MEMCMP (int ,int *,size_t) ;
 int db_append (TYPE_3__*,int ,scalar_t__,int ,size_t) ;
 int db_get (TYPE_3__*,scalar_t__,int ,int **,size_t*) ;
 scalar_t__ db_last (TYPE_3__*,scalar_t__*) ;
 int log_cursor (TYPE_3__*) ;
 scalar_t__ v_ecl_init (TYPE_3__*) ;

__attribute__((used)) static int
v_ecl_log(SCR *sp, TEXT *tp)
{
 recno_t lno;
 int rval;
 CHAR_T *p;
 size_t len;
 SCR *ccl_sp;


 if (sp->gp->ccl_sp == ((void*)0) && v_ecl_init(sp))
  return (1);

 ccl_sp = sp->gp->ccl_sp;





 if (sp->ep == ccl_sp->ep)
  return (0);

 if (db_last(ccl_sp, &lno)) {
  return (1);
 }

 if (lno > 0 &&
     !db_get(ccl_sp, lno, 0, &p, &len) &&
     len == tp->len &&
     !MEMCMP(tp->lb, p, len))
  rval = 0;
 else {
  rval = db_append(ccl_sp, 0, lno, tp->lb, tp->len);


  log_cursor(ccl_sp);
 }

 return (rval);
}
