
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigev_node {scalar_t__ sn_id; int sn_value; int (* sn_func ) (int ,struct aiocb*) ;} ;
struct aiocb {int dummy; } ;
typedef int (* aio_func ) (int ,struct aiocb*) ;



__attribute__((used)) static void
aio_dispatch(struct sigev_node *sn)
{
 aio_func f = sn->sn_func;

 f(sn->sn_value, (struct aiocb *)sn->sn_id);
}
