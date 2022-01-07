
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int isc_result_t ;
struct TYPE_4__ {unsigned char* c_cc; } ;
struct TYPE_5__ {int result; TYPE_1__ saved_mode; int fd; } ;
typedef TYPE_2__ isc_keyboard_t ;
typedef unsigned char cc_t ;


 int ISC_R_CANCELED ;
 int ISC_R_IOERROR ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 size_t VINTR ;
 size_t VQUIT ;
 scalar_t__ read (int ,unsigned char*,int) ;

isc_result_t
isc_keyboard_getchar(isc_keyboard_t *keyboard, unsigned char *cp) {
 ssize_t cc;
 unsigned char c;
 cc_t *controlchars;

 REQUIRE(keyboard != ((void*)0));
 REQUIRE(cp != ((void*)0));

 cc = read(keyboard->fd, &c, 1);
 if (cc < 0) {
  keyboard->result = ISC_R_IOERROR;
  return (keyboard->result);
 }

 controlchars = keyboard->saved_mode.c_cc;
 if (c == controlchars[VINTR] || c == controlchars[VQUIT]) {
  keyboard->result = ISC_R_CANCELED;
  return (keyboard->result);
 }

 *cp = c;

 return (ISC_R_SUCCESS);
}
