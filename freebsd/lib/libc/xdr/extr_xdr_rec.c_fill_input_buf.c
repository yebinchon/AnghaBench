
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int32_t ;
typedef int bool_t ;
struct TYPE_3__ {char* in_base; char* in_boundry; int in_size; int (* readit ) (int ,char*,int) ;char* in_finger; int tcp_handle; scalar_t__ nonblock; } ;
typedef TYPE_1__ RECSTREAM ;


 int BYTES_PER_XDR_UNIT ;
 int FALSE ;
 int TRUE ;
 int stub1 (int ,char*,int) ;

__attribute__((used)) static bool_t
fill_input_buf(RECSTREAM *rstrm)
{
 char *where;
 u_int32_t i;
 int len;

 if (rstrm->nonblock)
  return FALSE;

 where = rstrm->in_base;
 i = (u_int32_t)((u_long)rstrm->in_boundry % BYTES_PER_XDR_UNIT);
 where += i;
 len = (u_int32_t)(rstrm->in_size - i);
 if ((len = (*(rstrm->readit))(rstrm->tcp_handle, where, len)) == -1)
  return (FALSE);
 rstrm->in_finger = where;
 where += len;
 rstrm->in_boundry = where;
 return (TRUE);
}
