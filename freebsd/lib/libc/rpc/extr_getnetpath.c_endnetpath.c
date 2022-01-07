
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netpath_vars {scalar_t__ valid; int ncp; struct netpath_vars* nchain_next; struct netpath_vars* ncp_list; struct netpath_vars* netpath_start; int * nc_handlep; } ;
struct netpath_chain {scalar_t__ valid; int ncp; struct netpath_chain* nchain_next; struct netpath_chain* ncp_list; struct netpath_chain* netpath_start; int * nc_handlep; } ;


 int EINVAL ;
 scalar_t__ NP_VALID ;
 int endnetconfig (int *) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (struct netpath_vars*) ;
 int freenetconfigent (int ) ;
 scalar_t__ malloc_verify () ;
 int stderr ;

int
endnetpath(void *handlep)
{
    struct netpath_vars *np_sessionp = (struct netpath_vars *)handlep;
    struct netpath_chain *chainp, *lastp;

    if (np_sessionp == ((void*)0) || np_sessionp->valid != NP_VALID) {
 errno = EINVAL;
 return (-1);
    }
    if (np_sessionp->nc_handlep != ((void*)0))
 endnetconfig(np_sessionp->nc_handlep);
    if (np_sessionp->netpath_start != ((void*)0))
 free(np_sessionp->netpath_start);
    for (chainp = np_sessionp->ncp_list; chainp != ((void*)0);
     lastp=chainp, chainp=chainp->nchain_next, free(lastp)) {
 freenetconfigent(chainp->ncp);
    }
    free(np_sessionp);






    return (0);
}
