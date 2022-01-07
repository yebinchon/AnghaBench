
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {int p_command; scalar_t__ p_procid; } ;
typedef int jmp_buf_t ;
typedef scalar_t__ Char ;


 int ERR_BADJOB ;
 scalar_t__ GettingInput ;
 int alarm (int ) ;
 int alrmcatch_disabled ;
 int cleanup_pop_mark (size_t) ;
 size_t cleanup_push_mark () ;
 int disabled_cleanup (int *) ;
 int errno ;
 int getexit (int ) ;
 int haderr ;
 int pendjob () ;
 int pintr_disabled ;
 int pjwait (struct process*) ;
 int pstart (struct process*,int) ;
 int resexit (int ) ;
 int setalarm (int) ;
 scalar_t__ setexit () ;
 int stderror (int ,int ,int ) ;
 int strerror (int ) ;

void
fg_proc_entry(struct process *pp)
{
    jmp_buf_t osetexit;
    int ohaderr;
    Char oGettingInput;
    size_t omark;

    getexit(osetexit);

    pintr_disabled++;
    oGettingInput = GettingInput;
    GettingInput = 0;

    ohaderr = haderr;

    omark = cleanup_push_mark();
    if (setexit() == 0) {
 pendjob();
 (void) alarm(0);
 alrmcatch_disabled = 1;
 if (!pstart(pp, 1)) {
     pp->p_procid = 0;
     stderror(ERR_BADJOB, pp->p_command, strerror(errno));
 }
 pjwait(pp);
    }
    setalarm(1);
    cleanup_pop_mark(omark);
    resexit(osetexit);
    haderr = ohaderr;
    GettingInput = oGettingInput;

    disabled_cleanup(&pintr_disabled);
}
