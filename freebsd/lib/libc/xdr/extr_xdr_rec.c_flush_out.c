
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_int32_t ;
typedef scalar_t__ bool_t ;
struct TYPE_3__ {char* out_finger; int* frag_header; int (* writeit ) (int ,scalar_t__,int) ;scalar_t__ out_base; int tcp_handle; } ;
typedef TYPE_1__ RECSTREAM ;


 scalar_t__ FALSE ;
 int LAST_FRAG ;
 scalar_t__ TRUE ;
 int htonl (int) ;
 int stub1 (int ,scalar_t__,int) ;

__attribute__((used)) static bool_t
flush_out(RECSTREAM *rstrm, bool_t eor)
{
 u_int32_t eormask = (eor == TRUE) ? LAST_FRAG : 0;
 u_int32_t len = (u_int32_t)((u_long)(rstrm->out_finger) -
  (u_long)(rstrm->frag_header) - sizeof(u_int32_t));

 *(rstrm->frag_header) = htonl(len | eormask);
 len = (u_int32_t)((u_long)(rstrm->out_finger) -
     (u_long)(rstrm->out_base));
 if ((*(rstrm->writeit))(rstrm->tcp_handle, rstrm->out_base, (int)len)
  != (int)len)
  return (FALSE);
 rstrm->frag_header = (u_int32_t *)(void *)rstrm->out_base;
 rstrm->out_finger = (char *)rstrm->out_base + sizeof(u_int32_t);
 return (TRUE);
}
