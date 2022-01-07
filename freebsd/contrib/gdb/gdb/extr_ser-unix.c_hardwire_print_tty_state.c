
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct tchars {int dummy; } ;
struct serial {int dummy; } ;
struct ltchars {int dummy; } ;
struct TYPE_6__ {unsigned char sg_flags; } ;
struct TYPE_5__ {unsigned char* c_cc; int c_line; int c_lflag; int c_cflag; int c_oflag; int c_iflag; } ;
struct TYPE_4__ {unsigned char c_line; unsigned char* c_cc; scalar_t__ c_lflag; scalar_t__ c_cflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;
struct hardwire_ttystate {unsigned char lmode; int ltc; int tc; TYPE_3__ sgttyb; TYPE_2__ termio; TYPE_1__ termios; } ;
typedef scalar_t__ serial_ttystate ;


 int NCC ;
 int NCCS ;
 int fprintf_filtered (struct ui_file*,char*,...) ;

__attribute__((used)) static void
hardwire_print_tty_state (struct serial *scb,
     serial_ttystate ttystate,
     struct ui_file *stream)
{
  struct hardwire_ttystate *state = (struct hardwire_ttystate *) ttystate;
  int i;
}
