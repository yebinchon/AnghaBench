
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSADRAIN ;
 scalar_t__ _in_raw_mode ;
 int _saved_tio ;
 int fileno (int ) ;
 int perror (char*) ;
 int stdin ;
 int tcsetattr (int ,int ,int *) ;

void
leave_raw_mode(int quiet)
{
 if (!_in_raw_mode)
  return;
 if (tcsetattr(fileno(stdin), TCSADRAIN, &_saved_tio) == -1) {
  if (!quiet)
   perror("tcsetattr");
 } else
  _in_raw_mode = 0;
}
