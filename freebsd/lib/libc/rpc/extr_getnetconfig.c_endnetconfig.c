
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netconfig_vars {scalar_t__ valid; struct netconfig_vars* linep; struct netconfig_vars* ncp; struct netconfig_vars* nc_lookups; struct netconfig_vars* next; int * nc_configs; scalar_t__ flag; } ;
struct netconfig_list {scalar_t__ valid; struct netconfig_list* linep; struct netconfig_list* ncp; struct netconfig_list* nc_lookups; struct netconfig_list* next; int * nc_configs; scalar_t__ flag; } ;
struct TYPE_2__ {scalar_t__ ref; scalar_t__ eof; int * tail; struct netconfig_vars* head; } ;


 scalar_t__ NC_INVALID ;
 int NC_NOTINIT ;
 scalar_t__ NC_STORAGE ;
 scalar_t__ NC_VALID ;
 int fclose (int *) ;
 int free (struct netconfig_vars*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nc_error ;
 int * nc_file ;
 int nc_file_lock ;
 TYPE_1__ ni ;
 int ni_lock ;

int
endnetconfig(void *handlep)
{
    struct netconfig_vars *nc_handlep = (struct netconfig_vars *)handlep;

    struct netconfig_list *q, *p;




    if (nc_handlep == ((void*)0) || (nc_handlep->valid != NC_VALID &&
     nc_handlep->valid != NC_STORAGE)) {
 nc_error = NC_NOTINIT;
 return (-1);
    }




    nc_handlep->valid = NC_INVALID;
    nc_handlep->flag = 0;
    nc_handlep->nc_configs = ((void*)0);
    mutex_lock(&ni_lock);
    if (--ni.ref > 0) {
 mutex_unlock(&ni_lock);
     free(nc_handlep);
 return(0);
    }





    q = ni.head;
    ni.eof = ni.ref = 0;
    ni.head = ((void*)0);
    ni.tail = ((void*)0);
    mutex_unlock(&ni_lock);

    while (q != ((void*)0)) {
 p = q->next;
 free(q->ncp->nc_lookups);
 free(q->ncp);
 free(q->linep);
 free(q);
 q = p;
    }
    free(nc_handlep);

    mutex_lock(&nc_file_lock);
    fclose(nc_file);
    nc_file = ((void*)0);
    mutex_unlock(&nc_file_lock);

    return (0);
}
