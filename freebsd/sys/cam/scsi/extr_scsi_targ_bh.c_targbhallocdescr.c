
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct targbh_cmd_desc {int max_size; int * backing_store; } ;


 int MAX_BUF_SIZE ;
 int M_NOWAIT ;
 int M_SCSIBH ;
 int bzero (struct targbh_cmd_desc*,int) ;
 int free (struct targbh_cmd_desc*,int ) ;
 int * malloc (int,int ,int ) ;

__attribute__((used)) static struct targbh_cmd_desc*
targbhallocdescr()
{
 struct targbh_cmd_desc* descr;


 descr = (struct targbh_cmd_desc *)malloc(sizeof(*descr),
            M_SCSIBH, M_NOWAIT);
 if (descr == ((void*)0))
  return (((void*)0));

 bzero(descr, sizeof(*descr));


 descr->backing_store = malloc(MAX_BUF_SIZE, M_SCSIBH, M_NOWAIT);
 if (descr->backing_store == ((void*)0)) {
  free(descr, M_SCSIBH);
  return (((void*)0));
 }
 descr->max_size = MAX_BUF_SIZE;
 return (descr);
}
