
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stroptions {int so_flags; int so_hiwat; scalar_t__ so_lowat; int so_readopt; } ;
typedef int queue_t ;
typedef int parsetime_t ;
struct TYPE_7__ {int b_wptr; TYPE_1__* b_datap; } ;
typedef TYPE_2__ mblk_t ;
struct TYPE_8__ {int q_next; } ;
struct TYPE_6__ {int db_type; } ;


 int BPRI_MED ;
 int DD_OPEN ;
 int MC_SERVICEDEF ;
 int MC_SERVICEIMM ;
 int M_CTL ;
 int M_PARSE ;
 int M_SETOPTS ;
 int RMSGD ;
 int RNORM ;
 int SO_HIWAT ;
 int SO_ISNTTY ;
 int SO_LOWAT ;
 int SO_READOPT ;
 TYPE_5__* WR (int *) ;
 TYPE_2__* allocb (int,int ) ;
 int panic (char*) ;
 int pprintf (int ,char*,...) ;
 int putctl1 (int ,int ,int ) ;
 int putnext (int *,TYPE_2__*) ;

__attribute__((used)) static int
setup_stream(
      queue_t *q,
      int mode
      )
{
 register mblk_t *mp;

 pprintf(DD_OPEN,"parse: SETUP_STREAM - setting up stream for q=%x\n", q);

 mp = allocb(sizeof(struct stroptions), BPRI_MED);
 if (mp)
 {
  struct stroptions *str = (void *)mp->b_wptr;

  str->so_flags = SO_READOPT|SO_HIWAT|SO_LOWAT|SO_ISNTTY;
  str->so_readopt = (mode == M_PARSE) ? RMSGD : RNORM;
  str->so_hiwat = (mode == M_PARSE) ? sizeof(parsetime_t) : 256;
  str->so_lowat = 0;
  mp->b_datap->db_type = M_SETOPTS;
  mp->b_wptr += sizeof(struct stroptions);
  if (!q)
      panic("NULL q - strange");
  putnext(q, mp);
  return putctl1(WR(q)->q_next, M_CTL, (mode == M_PARSE) ? MC_SERVICEIMM :
          MC_SERVICEDEF);
 }
 else
 {
  pprintf(DD_OPEN, "parse: setup_stream - FAILED - no MEMORY for allocb\n");
  return 0;
 }
}
