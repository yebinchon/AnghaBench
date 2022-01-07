
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cvmx_nand_status_t ;
struct TYPE_2__ {int tim_mult; int* tim_par; int* clen; int* alen; int* rdn; int* wrn; int page_size; } ;


 int CVMX_NAND_INVALID_PARAM ;
 int CVMX_NAND_LOG_CALLED () ;
 int CVMX_NAND_RETURN (int ) ;
 int CVMX_NAND_SUCCESS ;
 TYPE_1__* cvmx_nand_state ;

cvmx_nand_status_t cvmx_nand_set_timing(int chip, int tim_mult, int tim_par[8], int clen[4], int alen[4], int rdn[4], int wrn[2])
{
    int i;
    CVMX_NAND_LOG_CALLED();

    if ((chip < 0) || (chip > 7))
        CVMX_NAND_RETURN(CVMX_NAND_INVALID_PARAM);
    if (!cvmx_nand_state[chip].page_size)
        CVMX_NAND_RETURN(CVMX_NAND_INVALID_PARAM);

    cvmx_nand_state[chip].tim_mult = tim_mult;
    for (i=0;i<8;i++)
        cvmx_nand_state[chip].tim_par[i] = tim_par[i];
    for (i=0;i<4;i++)
        cvmx_nand_state[chip].clen[i] = clen[i];
    for (i=0;i<4;i++)
        cvmx_nand_state[chip].alen[i] = alen[i];
    for (i=0;i<4;i++)
        cvmx_nand_state[chip].rdn[i] = rdn[i];
    for (i=0;i<2;i++)
        cvmx_nand_state[chip].wrn[i] = wrn[i];

    CVMX_NAND_RETURN(CVMX_NAND_SUCCESS);
}
