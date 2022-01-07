
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {int si_note; } ;
struct targ_softc {TYPE_1__ read_select; int user_ccb_queue; int abort_queue; int work_queue; int pending_ccb_queue; int * path; int * periph; int state; } ;
struct cdev {int dummy; } ;


 int M_TARG ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int TARG_STATE_OPENED ;
 int devfs_set_cdevpriv (struct targ_softc*,int ) ;
 int knlist_init_mtx (int *,int *) ;
 struct targ_softc* malloc (int,int ,int) ;
 int targcdevdtor ;

__attribute__((used)) static int
targopen(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct targ_softc *softc;


 softc = malloc(sizeof(*softc), M_TARG,
        M_WAITOK | M_ZERO);
 softc->state = TARG_STATE_OPENED;
 softc->periph = ((void*)0);
 softc->path = ((void*)0);

 TAILQ_INIT(&softc->pending_ccb_queue);
 TAILQ_INIT(&softc->work_queue);
 TAILQ_INIT(&softc->abort_queue);
 TAILQ_INIT(&softc->user_ccb_queue);
 knlist_init_mtx(&softc->read_select.si_note, ((void*)0));

 devfs_set_cdevpriv(softc, targcdevdtor);
 return (0);
}
