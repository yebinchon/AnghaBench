
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handshake; int * framing; int baud_rate; } ;
typedef TYPE_1__ COM_PARM ;


 int get_lsb_int16 (unsigned char**) ;
 int get_lsb_long (unsigned char**) ;

__attribute__((used)) static void
get_mbg_comparam(
 unsigned char **buffpp,
 COM_PARM *comparamp
 )
{
  size_t i;

  comparamp->baud_rate = get_lsb_long(buffpp);
  for (i = 0; i < sizeof(comparamp->framing); i++)
    {
      comparamp->framing[i] = *(*buffpp)++;
    }
  comparamp->handshake = get_lsb_int16(buffpp);
}
