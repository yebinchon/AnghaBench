
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {int fd; int result; } ;
typedef TYPE_1__ isc_keyboard_t ;


 int ISC_R_IOERROR ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int _fileno (int ) ;
 int stdin ;

isc_result_t
isc_keyboard_open(isc_keyboard_t *keyboard) {
 int fd;

 REQUIRE(keyboard != ((void*)0));

 fd = _fileno(stdin);
 if (fd < 0)
  return (ISC_R_IOERROR);

 keyboard->fd = fd;

 keyboard->result = ISC_R_SUCCESS;

 return (ISC_R_SUCCESS);
}
