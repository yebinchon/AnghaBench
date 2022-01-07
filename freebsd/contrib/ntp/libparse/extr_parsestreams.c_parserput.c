
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_14__ ;


struct TYPE_24__ {int tv; } ;
typedef TYPE_3__ timestamp_t ;
struct TYPE_25__ {int q_next; scalar_t__ q_ptr; } ;
typedef TYPE_4__ queue_t ;
typedef int parsetime_t ;
struct TYPE_23__ {int serial; int tv; } ;
struct TYPE_21__ {int parse_dtime; } ;
struct TYPE_26__ {int parse_status; TYPE_2__ parse_ppsclockev; TYPE_14__ parse_io; TYPE_4__* parse_queue; } ;
typedef TYPE_5__ parsestream_t ;
struct TYPE_27__ {int b_wptr; TYPE_1__* b_datap; int b_rptr; } ;
typedef TYPE_6__ mblk_t ;
typedef int caddr_t ;
struct TYPE_22__ {unsigned char db_type; } ;


 int BPRI_MED ;
 int DD_RPUT ;




 int PARSE_ENABLE ;
 unsigned char QPCTL ;
 scalar_t__ SYNC_ONE ;
 scalar_t__ SYNC_ZERO ;
 TYPE_6__* allocb (int,int ) ;
 int bcopy (int ,int ,int) ;
 int canput (int ) ;
 int cd_invert ;
 int freemsg (TYPE_6__*) ;
 int parse_iodone (TYPE_14__*) ;
 int parse_iopps (TYPE_14__*,int,TYPE_3__*) ;
 int parse_ioread (TYPE_14__*,unsigned int,TYPE_3__*) ;
 int parseprintf (int ,char*) ;
 int putnext (TYPE_4__*,TYPE_6__*) ;
 int putq (TYPE_4__*,TYPE_6__*) ;
 unsigned long rdchar (TYPE_6__**) ;
 int uniqtime (int *) ;

__attribute__((used)) static int
parserput(
 queue_t *q,
 mblk_t *mp
 )
{
 unsigned char type;

 switch (type = mp->b_datap->db_type)
 {
     default:




  parseprintf(DD_RPUT,("parse: parserput - forward type 0x%x\n", type));
  if (canput(q->q_next) || (mp->b_datap->db_type > QPCTL))
  {
   putnext(q, mp);
  }
  else
      putq(q, mp);
  break;

     case 131:
     case 130:
      {
       register parsestream_t * parse = (parsestream_t *)(void *)q->q_ptr;
       register mblk_t *nmp;
       register unsigned long ch;
       timestamp_t ctime;




       uniqtime(&ctime.tv);

       if (!(parse->parse_status & PARSE_ENABLE))
       {
        parseprintf(DD_RPUT,("parse: parserput - parser disabled - forward type 0x%x\n", type));
        if (canput(q->q_next) || (mp->b_datap->db_type > QPCTL))
        {
         putnext(q, mp);
        }
        else
     putq(q, mp);
       }
       else
       {
        parseprintf(DD_RPUT,("parse: parserput - M_%s\n", (type == 130) ? "DATA" : "BREAK"));

        if (type == 130)
        {



         while (mp != (mblk_t *)((void*)0))
         {
          ch = rdchar(&mp);
          if (ch != ~0 && parse_ioread(&parse->parse_io, (unsigned int)ch, &ctime))
          {




           nmp = (mblk_t *)((void*)0);
           if (canput(parse->parse_queue->q_next) && (nmp = allocb(sizeof(parsetime_t), BPRI_MED)))
           {
            bcopy((caddr_t)&parse->parse_io.parse_dtime, (caddr_t)nmp->b_rptr, sizeof(parsetime_t));
            nmp->b_wptr += sizeof(parsetime_t);
            putnext(parse->parse_queue, nmp);
           }
           else
        if (nmp) freemsg(nmp);
           parse_iodone(&parse->parse_io);
          }
         }
        }
        else
        {
         if (parse_ioread(&parse->parse_io, (unsigned int)0, &ctime))
         {




          nmp = (mblk_t *)((void*)0);
          if (canput(parse->parse_queue->q_next) && (nmp = allocb(sizeof(parsetime_t), BPRI_MED)))
          {
           bcopy((caddr_t)&parse->parse_io.parse_dtime, (caddr_t)nmp->b_rptr, sizeof(parsetime_t));
           nmp->b_wptr += sizeof(parsetime_t);
           putnext(parse->parse_queue, nmp);
          }
          else
       if (nmp) freemsg(nmp);
          parse_iodone(&parse->parse_io);
         }
         freemsg(mp);
        }
        break;
       }
      }




     case 129:
     case 128:
      {
       register parsestream_t * parse = (parsestream_t *)(void *)q->q_ptr;
       timestamp_t ctime;
       register mblk_t *nmp;
       register int status = cd_invert ^ (type == 128);

       uniqtime(&ctime.tv);

       parseprintf(DD_RPUT,("parse: parserput - M_%sHANGUP\n", (type == 129) ? "" : "UN"));

       if ((parse->parse_status & PARSE_ENABLE) &&
    parse_iopps(&parse->parse_io, (int)(status ? SYNC_ONE : SYNC_ZERO), &ctime))
       {
        nmp = (mblk_t *)((void*)0);
        if (canput(parse->parse_queue->q_next) && (nmp = allocb(sizeof(parsetime_t), BPRI_MED)))
        {
         bcopy((caddr_t)&parse->parse_io.parse_dtime, (caddr_t)nmp->b_rptr, sizeof(parsetime_t));
         nmp->b_wptr += sizeof(parsetime_t);
         putnext(parse->parse_queue, nmp);
        }
        else
     if (nmp) freemsg(nmp);
        parse_iodone(&parse->parse_io);
        freemsg(mp);
       }
       else
    if (canput(q->q_next) || (mp->b_datap->db_type > QPCTL))
    {
     putnext(q, mp);
    }
    else
        putq(q, mp);

       if (status)
       {
        parse->parse_ppsclockev.tv = ctime.tv;
        ++(parse->parse_ppsclockev.serial);
       }
      }
 }
 return 0;
}
