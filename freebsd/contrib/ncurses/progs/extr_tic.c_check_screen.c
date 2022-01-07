
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int term_names; } ;
typedef TYPE_1__ TERMTYPE ;


 int FALSE ;
 int VALID_BOOLEAN (int) ;
 scalar_t__ VALID_STRING (int ) ;
 char* _nc_first_name (int ) ;
 scalar_t__ _nc_user_definable ;
 int _nc_warning (char*) ;
 int back_color_erase ;
 int key_mouse ;
 scalar_t__ max_colors ;
 int orig_colors ;
 int orig_pair ;
 scalar_t__ strchr (char*,char) ;
 int strcmp (char*,int ) ;
 scalar_t__ strstr (char*,char*) ;
 int tigetflag (char*) ;
 int to_status_line ;
 int uses_SGR_39_49 (int ) ;

__attribute__((used)) static void
check_screen(TERMTYPE *tp)
{
}
