
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_process {int * up_mtx; int up_drain; int up_cv; int up_qhead; } ;


 int TAILQ_INIT (int *) ;
 int cv_init (int *,char*) ;
 int usb_proc_mtx ;

__attribute__((used)) static void
usb_process_init_sub(struct usb_process *up)
{
 TAILQ_INIT(&up->up_qhead);

 cv_init(&up->up_cv, "-");
 cv_init(&up->up_drain, "usbdrain");

 up->up_mtx = &usb_proc_mtx;
}
