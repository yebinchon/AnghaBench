
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_16__ ;


struct TYPE_27__ {int tv_usec; int tv_sec; } ;
struct TYPE_29__ {TYPE_2__ tv; } ;
typedef TYPE_4__ timestamp_t ;
struct TYPE_30__ {int tv_nsec; int tv_sec; } ;
typedef TYPE_5__ timespec_t ;
struct TYPE_31__ {scalar_t__ q_ptr; } ;
typedef TYPE_6__ queue_t ;
typedef int parsetime_t ;
struct TYPE_28__ {int serial; TYPE_2__ tv; } ;
struct TYPE_25__ {int parse_dtime; } ;
struct TYPE_32__ {int parse_status; TYPE_3__ parse_ppsclockev; TYPE_16__ parse_io; TYPE_6__* parse_queue; } ;
typedef TYPE_7__ parsestream_t ;
struct TYPE_33__ {int b_wptr; TYPE_1__* b_datap; int b_rptr; } ;
typedef TYPE_8__ mblk_t ;
typedef int caddr_t ;
struct TYPE_26__ {unsigned char db_type; } ;


 int BPRI_MED ;
 int DD_RPUT ;




 int PARSE_ENABLE ;
 unsigned char QPCTL ;
 int SYNC_ONE ;
 int SYNC_ZERO ;
 TYPE_8__* allocb (int,int ) ;
 int bcopy (int ,int ,int) ;
 int canputnext (TYPE_6__*) ;
 int cd_invert ;
 int freemsg (TYPE_8__*) ;
 int gethrestime (TYPE_5__*) ;
 int parse_iodone (TYPE_16__*) ;
 int parse_iopps (TYPE_16__*,int ,TYPE_4__*) ;
 int parse_ioread (TYPE_16__*,unsigned int,TYPE_4__*) ;
 int pprintf (int ,char*,...) ;
 int putnext (TYPE_6__*,TYPE_8__*) ;
 int putq (TYPE_6__*,TYPE_8__*) ;
 unsigned long rdchar (TYPE_8__**) ;

__attribute__((used)) static int
parserput(
   queue_t *q,
   mblk_t *imp
   )
{
 register unsigned char type;
 mblk_t *mp = imp;

 switch (type = mp->b_datap->db_type)
 {
     default:




  pprintf(DD_RPUT, "parse: parserput - forward type 0x%x\n", type);

  if (canputnext(q) || (mp->b_datap->db_type > QPCTL))
  {
   putnext(q, mp);
  }
  else
      putq(q, mp);
  break;

     case 131:
     case 130:
      {
       register parsestream_t * parse = (parsestream_t *)q->q_ptr;
       register mblk_t *nmp;
       register unsigned long ch;
       timestamp_t c_time;
       timespec_t hres_time;




       gethrestime(&hres_time);
       c_time.tv.tv_sec = hres_time.tv_sec;
       c_time.tv.tv_usec = hres_time.tv_nsec / 1000;

       if (!(parse->parse_status & PARSE_ENABLE))
       {
        pprintf(DD_RPUT, "parse: parserput - parser disabled - forward type 0x%x\n", type);
        if (canputnext(q) || (mp->b_datap->db_type > QPCTL))
        {
         putnext(q, mp);
        }
        else
     putq(q, mp);
       }
       else
       {
        pprintf(DD_RPUT, "parse: parserput - M_%s\n", (type == 130) ? "DATA" : "BREAK");
        if (type == 130)
        {



         while (mp != (mblk_t *)((void*)0))
         {
          ch = rdchar(&mp);
          if (ch != ~0 && parse_ioread(&parse->parse_io, (unsigned int)ch, &c_time))
          {




           nmp = (mblk_t *)((void*)0);
           if (canputnext(parse->parse_queue) && (nmp = allocb(sizeof(parsetime_t), BPRI_MED)))
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
         if (parse_ioread(&parse->parse_io, (unsigned int)0, &c_time))
         {




          nmp = (mblk_t *)((void*)0);
          if (canputnext(parse->parse_queue) && (nmp = allocb(sizeof(parsetime_t), BPRI_MED)))
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
       register parsestream_t * parse = (parsestream_t *)q->q_ptr;
       timestamp_t c_time;
       timespec_t hres_time;
       register mblk_t *nmp;
       register int status = cd_invert ^ (type == 128);

       gethrestime(&hres_time);
       c_time.tv.tv_sec = hres_time.tv_sec;
       c_time.tv.tv_usec = hres_time.tv_nsec / 1000;

       pprintf(DD_RPUT, "parse: parserput - M_%sHANGUP\n", (type == 129) ? "" : "UN");

       if ((parse->parse_status & PARSE_ENABLE) &&
    parse_iopps(&parse->parse_io, status ? SYNC_ONE : SYNC_ZERO, &c_time))
       {
        nmp = (mblk_t *)((void*)0);
        if (canputnext(parse->parse_queue) && (nmp = allocb(sizeof(parsetime_t), BPRI_MED)))
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
    if (canputnext(q) || (mp->b_datap->db_type > QPCTL))
    {
     putnext(q, mp);
    }
    else
        putq(q, mp);

       if (status)
       {
        parse->parse_ppsclockev.tv = c_time.tv;
        ++(parse->parse_ppsclockev.serial);
       }
      }
 }
 return 0;
}
