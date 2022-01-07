
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qg_numqueues; } ;


 int NumQueue ;
 TYPE_1__** Queue ;
 int SM_TIME_DEFAULT ;
 scalar_t__ StopRequest ;
 scalar_t__ print_single_queue (int,int) ;
 int sm_io_fprintf (int ,int ,char*,int) ;
 int smioout ;
 int stop_sendmail () ;

void
printqueue()
{
 int i, k = 0, nrequests = 0;

 for (i = 0; i < NumQueue && Queue[i] != ((void*)0); i++)
 {
  int j;

  k++;
  for (j = 0; j < Queue[i]->qg_numqueues; j++)
  {
   if (StopRequest)
    stop_sendmail();
   nrequests += print_single_queue(i, j);
   k++;
  }
 }
 if (k > 1)
  (void) sm_io_fprintf(smioout, SM_TIME_DEFAULT,
         "\t\tTotal requests: %d\n",
         nrequests);
}
