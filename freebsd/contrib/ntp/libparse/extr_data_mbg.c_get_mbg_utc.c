
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int delta_tlsf; int delta_tls; void* DNt; int WNlsf; int A1; int A0; int t0t; void* valid; scalar_t__ csum; } ;
typedef TYPE_1__ UTC ;
typedef scalar_t__ CSUM ;


 int IEEE_DOUBLE ;
 scalar_t__ IEEE_OK ;
 int L_CLR (int *) ;
 scalar_t__ fetch_ieee754 (unsigned char**,int ,int *,int ) ;
 void* get_lsb_int16 (unsigned char**) ;
 scalar_t__ get_lsb_short (unsigned char**) ;
 int get_lsb_uint16 (unsigned char**) ;
 int get_mbg_tgps (unsigned char**,int *) ;
 int mbg_double ;

void
get_mbg_utc(
 unsigned char **buffpp,
 UTC *utcp
 )
{
  utcp->csum = (CSUM) get_lsb_short(buffpp);
  utcp->valid = get_lsb_int16(buffpp);

  get_mbg_tgps(buffpp, &utcp->t0t);

  if (fetch_ieee754(buffpp, IEEE_DOUBLE, &utcp->A0, mbg_double) != IEEE_OK)
    {
      L_CLR(&utcp->A0);
    }

  if (fetch_ieee754(buffpp, IEEE_DOUBLE, &utcp->A1, mbg_double) != IEEE_OK)
    {
      L_CLR(&utcp->A1);
    }

  utcp->WNlsf = get_lsb_uint16(buffpp);
  utcp->DNt = get_lsb_int16(buffpp);
  utcp->delta_tls = *(*buffpp)++;
  utcp->delta_tlsf = *(*buffpp)++;
}
