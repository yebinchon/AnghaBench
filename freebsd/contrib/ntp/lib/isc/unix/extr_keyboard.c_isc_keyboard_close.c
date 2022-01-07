
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {scalar_t__ result; int fd; int saved_mode; } ;
typedef TYPE_1__ isc_keyboard_t ;


 scalar_t__ ISC_R_CANCELED ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int TCSAFLUSH ;
 int close (int) ;
 int sleep (unsigned int) ;
 int tcsetattr (int,int ,int *) ;

isc_result_t
isc_keyboard_close(isc_keyboard_t *keyboard, unsigned int sleeptime) {
 REQUIRE(keyboard != ((void*)0));

 if (sleeptime > 0 && keyboard->result != ISC_R_CANCELED)
  (void)sleep(sleeptime);

 (void)tcsetattr(keyboard->fd, TCSAFLUSH, &keyboard->saved_mode);
 (void)close(keyboard->fd);

 keyboard->fd = -1;

 return (ISC_R_SUCCESS);
}
