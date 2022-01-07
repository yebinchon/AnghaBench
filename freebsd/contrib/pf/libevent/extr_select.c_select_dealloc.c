
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selectop {struct selectop* event_w_by_fd; struct selectop* event_r_by_fd; struct selectop* event_writeset_out; struct selectop* event_readset_out; struct selectop* event_writeset_in; struct selectop* event_readset_in; } ;


 int free (struct selectop*) ;
 int memset (struct selectop*,int ,int) ;

void
select_dealloc(void *arg)
{
 struct selectop *sop = arg;

 if (sop->event_readset_in)
  free(sop->event_readset_in);
 if (sop->event_writeset_in)
  free(sop->event_writeset_in);
 if (sop->event_readset_out)
  free(sop->event_readset_out);
 if (sop->event_writeset_out)
  free(sop->event_writeset_out);
 if (sop->event_r_by_fd)
  free(sop->event_r_by_fd);
 if (sop->event_w_by_fd)
  free(sop->event_w_by_fd);

 memset(sop, 0, sizeof(struct selectop));
 free(sop);
}
