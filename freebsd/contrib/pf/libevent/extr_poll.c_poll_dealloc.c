
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollop {struct pollop* idxplus1_by_fd; struct pollop* event_w_back; struct pollop* event_r_back; struct pollop* event_set; } ;


 int free (struct pollop*) ;
 int memset (struct pollop*,int ,int) ;

void
poll_dealloc(void *arg)
{
 struct pollop *pop = arg;

 if (pop->event_set)
  free(pop->event_set);
 if (pop->event_r_back)
  free(pop->event_r_back);
 if (pop->event_w_back)
  free(pop->event_w_back);
 if (pop->idxplus1_by_fd)
  free(pop->idxplus1_by_fd);

 memset(pop, 0, sizeof(struct pollop));
 free(pop);
}
