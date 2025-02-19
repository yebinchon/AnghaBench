
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* q_ptr; } ;
typedef TYPE_1__ queue_t ;
struct TYPE_9__ {int parse_io; TYPE_1__* parse_dqueue; } ;
typedef TYPE_2__ parsestream_t ;
typedef void* caddr_t ;
struct TYPE_10__ {void* q_ptr; } ;


 int DD_CLOSE ;
 TYPE_6__* WR (TYPE_1__*) ;
 int close_linemon (TYPE_1__*,TYPE_1__*) ;
 int kmem_free (void*,int) ;
 int parse_ioend (int *) ;
 int parsebusy ;
 int parseprintf (int ,char*) ;
 unsigned long splhigh () ;
 int splx (unsigned long) ;

__attribute__((used)) static int
parseclose(
 queue_t *q,
 int flags
 )
{
 register parsestream_t *parse = (parsestream_t *)(void *)q->q_ptr;
 register unsigned long s;

 parseprintf(DD_CLOSE,("parse: CLOSE\n"));

 s = splhigh();

 if (parse->parse_dqueue)
     close_linemon(parse->parse_dqueue, q);
 parse->parse_dqueue = (queue_t *)0;

 (void) splx(s);

 parse_ioend(&parse->parse_io);

 kmem_free((caddr_t)parse, sizeof(parsestream_t));

 q->q_ptr = (caddr_t)((void*)0);
 WR(q)->q_ptr = (caddr_t)((void*)0);




 return 0;
}
