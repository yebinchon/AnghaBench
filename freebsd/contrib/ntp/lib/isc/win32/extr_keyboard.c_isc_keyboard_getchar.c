
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int isc_result_t ;
struct TYPE_3__ {int result; int fd; } ;
typedef TYPE_1__ isc_keyboard_t ;


 int ISC_R_IOERROR ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 scalar_t__ read (int ,unsigned char*,int) ;

isc_result_t
isc_keyboard_getchar(isc_keyboard_t *keyboard, unsigned char *cp) {
 ssize_t cc;
 unsigned char c;

 REQUIRE(keyboard != ((void*)0));
 REQUIRE(cp != ((void*)0));

 cc = read(keyboard->fd, &c, 1);
 if (cc < 0) {
  keyboard->result = ISC_R_IOERROR;
  return (keyboard->result);
 }

 *cp = c;

 return (ISC_R_SUCCESS);
}
