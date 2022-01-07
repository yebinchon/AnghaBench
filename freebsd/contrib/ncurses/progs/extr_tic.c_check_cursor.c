
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int term_names; } ;
typedef TYPE_1__ TERMTYPE ;


 int ANDMISSING (char*,char*) ;
 int EXPECTED (char*) ;
 scalar_t__ PRESENT (char*) ;
 int _nc_warning (char*) ;
 int check_ansi_cursor (char**) ;
 int check_noaddress (TYPE_1__*,char*) ;
 char* column_address ;
 char* cursor_address ;
 char* cursor_down ;
 char* cursor_home ;
 char* cursor_left ;
 char* cursor_mem_address ;
 char* cursor_right ;
 char* cursor_to_ll ;
 char* cursor_up ;
 char* delete_line ;
 scalar_t__ generic_type ;
 scalar_t__ hard_copy ;
 char* insert_line ;
 char* parm_delete_line ;
 char* parm_down_cursor ;
 char* parm_insert_line ;
 char* parm_left_cursor ;
 char* parm_right_cursor ;
 char* parm_up_cursor ;
 char* row_address ;
 scalar_t__ strchr (int ,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
check_cursor(TERMTYPE *tp)
{
    int count;
    char *list[4];

    if (hard_copy) {
 check_noaddress(tp, "hard_copy");
    } else if (generic_type) {
 check_noaddress(tp, "generic_type");
    } else if (strchr(tp->term_names, '+') == 0) {
 int y = 0;
 int x = 0;
 if (PRESENT(column_address))
     ++y;
 if (PRESENT(cursor_address))
     y = x = 10;
 if (PRESENT(cursor_home))
     ++y, ++x;
 if (PRESENT(cursor_mem_address))
     y = x = 10;
 if (PRESENT(cursor_to_ll))
     ++y, ++x;
 if (PRESENT(row_address))
     ++x;
 if (PRESENT(cursor_down))
     ++y;
 if (PRESENT(cursor_up))
     ++y;
 if (PRESENT(cursor_left))
     ++x;
 if (PRESENT(cursor_right))
     ++x;
 if (x < 2 && y < 2) {
     _nc_warning("terminal lacks cursor addressing");
 } else {
     if (x < 2)
  _nc_warning("terminal lacks cursor column-addressing");
     if (y < 2)
  _nc_warning("terminal lacks cursor row-addressing");
 }
    }


    ANDMISSING(parm_insert_line, insert_line);
    ANDMISSING(parm_delete_line, delete_line);
    ANDMISSING(parm_insert_line, parm_delete_line);


    ANDMISSING(parm_down_cursor, cursor_down);
    ANDMISSING(parm_up_cursor, cursor_up);
    ANDMISSING(parm_left_cursor, cursor_left);
    ANDMISSING(parm_right_cursor, cursor_right);





    count = 0;
    if (PRESENT(parm_down_cursor)) {
 list[count++] = parm_down_cursor;
    }
    if (PRESENT(parm_up_cursor)) {
 list[count++] = parm_up_cursor;
    }
    if (PRESENT(parm_left_cursor)) {
 list[count++] = parm_left_cursor;
    }
    if (PRESENT(parm_right_cursor)) {
 list[count++] = parm_right_cursor;
    }
    if (count == 4) {
 check_ansi_cursor(list);
    } else if (count != 0) {
 EXPECTED(parm_down_cursor);
 EXPECTED(parm_up_cursor);
 EXPECTED(parm_left_cursor);
 EXPECTED(parm_right_cursor);
    }

    count = 0;
    if (PRESENT(cursor_down)) {
 list[count++] = cursor_down;
    }
    if (PRESENT(cursor_up)) {
 list[count++] = cursor_up;
    }
    if (PRESENT(cursor_left)) {
 list[count++] = cursor_left;
    }
    if (PRESENT(cursor_right)) {
 list[count++] = cursor_right;
    }
    if (count == 4) {
 check_ansi_cursor(list);
    } else if (count != 0) {
 count = 0;
 if (PRESENT(cursor_down) && strcmp(cursor_down, "\n"))
     ++count;
 if (PRESENT(cursor_left) && strcmp(cursor_left, "\b"))
     ++count;
 if (PRESENT(cursor_up) && strlen(cursor_up) > 1)
     ++count;
 if (PRESENT(cursor_right) && strlen(cursor_right) > 1)
     ++count;
 if (count) {
     EXPECTED(cursor_down);
     EXPECTED(cursor_up);
     EXPECTED(cursor_left);
     EXPECTED(cursor_right);
 }
    }
}
