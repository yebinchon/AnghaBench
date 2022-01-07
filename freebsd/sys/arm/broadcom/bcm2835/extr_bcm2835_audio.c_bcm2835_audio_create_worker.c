
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct bcm2835_audio_info {int worker_state; } ;


 int WORKER_RUNNING ;
 int bcm2835_audio_worker ;
 scalar_t__ kproc_create (int ,void*,struct proc**,int ,int ,char*) ;
 int printf (char*) ;

__attribute__((used)) static void
bcm2835_audio_create_worker(struct bcm2835_audio_info *sc)
{
 struct proc *newp;

 sc->worker_state = WORKER_RUNNING;
 if (kproc_create(bcm2835_audio_worker, (void*)sc, &newp, 0, 0,
     "bcm2835_audio_worker") != 0) {
  printf("failed to create bcm2835_audio_worker\n");
 }
}
