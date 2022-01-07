
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adh_trail_fd; int adh_trail_name; int adh_directory; } ;


 int ADIST_ERROR_WRONG_ORDER ;
 int PJDLOG_VERIFY (int) ;
 TYPE_1__* adhost ;
 scalar_t__ close (int) ;
 int pjdlog_debug (int,char*,int ,int ) ;
 int pjdlog_error (char*) ;

__attribute__((used)) static int
receiver_error(void)
{


 if (adhost->adh_trail_fd == -1) {
  pjdlog_error("Sender send read error, but file is not open.");
  return (ADIST_ERROR_WRONG_ORDER);
 }

 PJDLOG_VERIFY(close(adhost->adh_trail_fd) == 0);
 adhost->adh_trail_fd = -1;

 pjdlog_debug(1, "Closed file \"%s/%s\".", adhost->adh_directory,
     adhost->adh_trail_name);

 return (0);
}
