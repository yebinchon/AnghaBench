
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_15__ {scalar_t__ q_ptr; } ;
typedef TYPE_3__ queue_t ;
struct TYPE_13__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_14__ {scalar_t__ serial; TYPE_1__ tv; } ;
struct TYPE_16__ {int parse_io; TYPE_2__ parse_ppsclockev; int parse_status; TYPE_3__* parse_queue; } ;
typedef TYPE_4__ parsestream_t ;
typedef int dev_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_18__ {char* Drv_name; } ;
struct TYPE_17__ {int u_error; } ;
struct TYPE_12__ {scalar_t__ q_ptr; } ;


 int DD_OPEN ;
 int EBUSY ;
 int MODOPEN ;
 int M_PARSE ;
 int OPENFAIL ;
 int PARSE_ENABLE ;
 TYPE_10__* WR (TYPE_3__*) ;
 int bzero (scalar_t__,int) ;
 int init_linemon (TYPE_3__*) ;
 scalar_t__ kmem_alloc (int) ;
 int kmem_free (scalar_t__,int) ;
 int parse_ioinit (int *) ;
 int parsebusy ;
 int parseprintf (int ,char*) ;
 TYPE_7__ parsesync_vd ;
 int printf (char*,char*) ;
 scalar_t__ setup_stream (TYPE_3__*,int ) ;
 TYPE_5__ u ;

__attribute__((used)) static int
parseopen(
 queue_t *q,
 dev_t dev,
 int flag,
 int sflag
 )
{
 register parsestream_t *parse;
 static int notice = 0;

 parseprintf(DD_OPEN,("parse: OPEN\n"));

 if (sflag != MODOPEN)
 {
  parseprintf(DD_OPEN,("parse: OPEN - FAILED - not MODOPEN\n"));
  return OPENFAIL;
 }

 if (q->q_ptr != (caddr_t)((void*)0))
 {
  u.u_error = EBUSY;
  parseprintf(DD_OPEN,("parse: OPEN - FAILED - EXCLUSIVE ONLY\n"));
  return OPENFAIL;
 }





 q->q_ptr = (caddr_t)kmem_alloc(sizeof(parsestream_t));
 if (q->q_ptr == (caddr_t)0)
 {
  parseprintf(DD_OPEN,("parse: OPEN - FAILED - no memory\n"));



  return OPENFAIL;
 }
 WR(q)->q_ptr = q->q_ptr;

 parse = (parsestream_t *)(void *)q->q_ptr;
 bzero((caddr_t)parse, sizeof(*parse));
 parse->parse_queue = q;
 parse->parse_status = PARSE_ENABLE;
 parse->parse_ppsclockev.tv.tv_sec = 0;
 parse->parse_ppsclockev.tv.tv_usec = 0;
 parse->parse_ppsclockev.serial = 0;

 if (!parse_ioinit(&parse->parse_io))
 {



  kmem_free((caddr_t)parse, sizeof(parsestream_t));



  return OPENFAIL;
 }

 if (setup_stream(q, M_PARSE))
 {
  (void) init_linemon(q);

  parseprintf(DD_OPEN,("parse: OPEN - SUCCEEDED\n"));





  if (!notice)
  {



   printf("%s: Copyright (C) 1991-2005, Frank Kardel\n", "parsestreams.c,v 4.11 2005/04/16 17:32:10 kardel RELEASE_20050508_A");

   notice = 1;
  }

  return MODOPEN;
 }
 else
 {
  kmem_free((caddr_t)parse, sizeof(parsestream_t));




  return OPENFAIL;
 }
}
