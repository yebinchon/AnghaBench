
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_16__ {scalar_t__ q_ptr; } ;
typedef TYPE_3__ queue_t ;
struct TYPE_14__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_15__ {scalar_t__ serial; TYPE_1__ tv; } ;
struct TYPE_17__ {int parse_io; TYPE_2__ parse_ppsclockev; int parse_status; TYPE_3__* parse_queue; } ;
typedef TYPE_4__ parsestream_t ;
typedef int dev_t ;
typedef int cred_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_18__ {int strmod_linkinfo; } ;
struct TYPE_13__ {scalar_t__ q_ptr; } ;


 int CE_CONT ;
 int DD_OPEN ;
 int EBUSY ;
 int EIO ;
 int ENOMEM ;
 int KM_SLEEP ;
 int MODOPEN ;
 int M_PARSE ;
 int PARSE_ENABLE ;
 TYPE_11__* WR (TYPE_3__*) ;
 int bzero (scalar_t__,int) ;
 int cmn_err (int ,char*,int ) ;
 int init_linemon (TYPE_3__*) ;
 scalar_t__ kmem_alloc (int,int ) ;
 int kmem_free (scalar_t__,int) ;
 TYPE_9__ modlstrmod ;
 int parse_ioinit (int *) ;
 int pprintf (int ,char*,...) ;
 int qprocsoff (TYPE_3__*) ;
 int qprocson (TYPE_3__*) ;
 scalar_t__ setup_stream (TYPE_3__*,int ) ;

__attribute__((used)) static int
parseopen(
   queue_t *q,
   dev_t *dev,
   int flag,
   int sflag,
   cred_t *credp
   )
{
 register parsestream_t *parse;
 static int notice = 0;

 pprintf(DD_OPEN, "parse: OPEN - q=%x\n", q);

 if (sflag != MODOPEN)
 {
  pprintf(DD_OPEN, "parse: OPEN - FAILED - not MODOPEN\n");
  return EIO;
 }

 if (q->q_ptr != (caddr_t)((void*)0))
 {
  pprintf(DD_OPEN, "parse: OPEN - FAILED - EXCLUSIVE ONLY\n");
  return EBUSY;
 }

 q->q_ptr = (caddr_t)kmem_alloc(sizeof(parsestream_t), KM_SLEEP);
 if (q->q_ptr == (caddr_t)0)
 {
  return ENOMEM;
 }

 pprintf(DD_OPEN, "parse: OPEN - parse area q=%x, q->q_ptr=%x\n", q, q->q_ptr);
 WR(q)->q_ptr = q->q_ptr;
 pprintf(DD_OPEN, "parse: OPEN - WQ parse area q=%x, q->q_ptr=%x\n", WR(q), WR(q)->q_ptr);

 parse = (parsestream_t *) q->q_ptr;
 bzero((caddr_t)parse, sizeof(*parse));
 parse->parse_queue = q;
 parse->parse_status = PARSE_ENABLE;
 parse->parse_ppsclockev.tv.tv_sec = 0;
 parse->parse_ppsclockev.tv.tv_usec = 0;
 parse->parse_ppsclockev.serial = 0;

 qprocson(q);

 pprintf(DD_OPEN, "parse: OPEN - initializing io subsystem q=%x\n", q);

 if (!parse_ioinit(&parse->parse_io))
 {



  qprocsoff(q);

  kmem_free((caddr_t)parse, sizeof(parsestream_t));

  return EIO;
 }

 pprintf(DD_OPEN, "parse: OPEN - initializing stream q=%x\n", q);

 if (setup_stream(q, M_PARSE))
 {
  (void) init_linemon(q);
  pprintf(DD_OPEN, "parse: OPEN - SUCCEEDED\n");





  if (!notice)
  {
    cmn_err(CE_CONT, "?%s: Copyright (c) 1993-2005, Frank Kardel\n", modlstrmod.strmod_linkinfo);
   notice = 1;
  }

  return 0;
 }
 else
 {
  qprocsoff(q);

  kmem_free((caddr_t)parse, sizeof(parsestream_t));

  return EIO;
 }
}
