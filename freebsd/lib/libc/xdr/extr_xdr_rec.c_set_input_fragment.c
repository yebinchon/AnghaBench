
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int header ;
typedef int bool_t ;
struct TYPE_4__ {int fbtbc; int last_frag; scalar_t__ nonblock; } ;
typedef TYPE_1__ RECSTREAM ;


 int FALSE ;
 int LAST_FRAG ;
 int TRUE ;
 int get_input_bytes (TYPE_1__*,char*,int) ;
 int ntohl (int) ;

__attribute__((used)) static bool_t
set_input_fragment(RECSTREAM *rstrm)
{
 u_int32_t header;

 if (rstrm->nonblock)
  return FALSE;
 if (! get_input_bytes(rstrm, (char *)(void *)&header, sizeof(header)))
  return (FALSE);
 header = ntohl(header);
 rstrm->last_frag = ((header & LAST_FRAG) == 0) ? FALSE : TRUE;
 if (header == 0)
  return(FALSE);
 rstrm->fbtbc = header & (~LAST_FRAG);
 return (TRUE);
}
