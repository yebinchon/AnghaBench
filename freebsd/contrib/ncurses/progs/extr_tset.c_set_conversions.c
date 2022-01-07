
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_iflag; unsigned int c_oflag; int c_lflag; int c_cflag; } ;


 int ECHO ;
 int ECHOE ;
 int ECHOK ;
 int ICANON ;
 int ICRNL ;
 int INPCK ;
 int IUCLC ;
 unsigned int OLCUC ;
 unsigned int ONLCR ;
 unsigned int OXTABS ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 scalar_t__ has_hardware_tabs ;
 TYPE_1__ mode ;
 char* newline ;
 scalar_t__ tgetflag (char*) ;

__attribute__((used)) static void
set_conversions(void)
{
}
