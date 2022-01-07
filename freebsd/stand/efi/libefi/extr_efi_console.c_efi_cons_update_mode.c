
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {unsigned int ta_fgcolor; unsigned int ta_bgcolor; } ;
typedef TYPE_2__ teken_attr_t ;
typedef int env ;
typedef int UINTN ;
struct TYPE_16__ {char c; TYPE_2__ a; } ;
struct TYPE_15__ {int (* SetAttribute ) (TYPE_6__*,int ) ;TYPE_1__* Mode; int (* QueryMode ) (TYPE_6__*,int ,int*,int*) ;} ;
struct TYPE_14__ {int tp_row; int tp_col; } ;
struct TYPE_12__ {int Mode; } ;
typedef int EFI_STATUS ;


 int DEFAULT_BGCOLOR ;
 int DEFAULT_FGCOLOR ;
 scalar_t__ EFI_ERROR (int ) ;
 int EFI_TEXT_ATTR (int ,int ) ;
 int EV_VOLATILE ;
 int RB_SERIAL ;
 int bg_c ;
 TYPE_8__* buffer ;
 TYPE_6__* conout ;
 int curs_move (int *,int *,int ,int ) ;
 int curx ;
 int cury ;
 int efi_set_colors ;
 int end_term () ;
 int env_nounset ;
 int env_setenv (char*,int ,char*,int ,int ) ;
 int fg_c ;
 int free (TYPE_8__*) ;
 int get_pos (int *,int *) ;
 TYPE_8__* malloc (int) ;
 int mode ;
 int parse_uefi_con_out () ;
 int setenv (char*,char*,int) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int stub1 (TYPE_6__*,int ,int*,int*) ;
 int stub2 (TYPE_6__*,int ) ;
 int teken ;
 TYPE_2__* teken_get_defattr (int *) ;
 int teken_init (int *,int *,int *) ;
 int teken_set_winsize (int *,TYPE_3__*) ;
 int tf ;
 TYPE_3__ tp ;

bool
efi_cons_update_mode(void)
{
 UINTN cols, rows;
 const teken_attr_t *a;
 EFI_STATUS status;
 char env[8];

 status = conout->QueryMode(conout, conout->Mode->Mode, &cols, &rows);
 if (EFI_ERROR(status)) {
  cols = 80;
  rows = 24;
 }
 mode = parse_uefi_con_out();
 if ((mode & RB_SERIAL) == 0) {
  if (buffer != ((void*)0)) {
   if (tp.tp_row == rows && tp.tp_col == cols)
    return (1);
   free(buffer);
  } else {
   teken_init(&teken, &tf, ((void*)0));
  }

  tp.tp_row = rows;
  tp.tp_col = cols;
  buffer = malloc(rows * cols * sizeof(*buffer));
  if (buffer == ((void*)0))
   return (0);

  teken_set_winsize(&teken, &tp);
  a = teken_get_defattr(&teken);

  snprintf(env, sizeof(env), "%d", a->ta_fgcolor);
  env_setenv("teken.fg_color", EV_VOLATILE, env, efi_set_colors,
      env_nounset);
  snprintf(env, sizeof(env), "%d", a->ta_bgcolor);
  env_setenv("teken.bg_color", EV_VOLATILE, env, efi_set_colors,
      env_nounset);

  for (int row = 0; row < rows; row++) {
   for (int col = 0; col < cols; col++) {
    buffer[col + row * tp.tp_col].c = ' ';
    buffer[col + row * tp.tp_col].a = *a;
   }
  }
 } else {
 }

 snprintf(env, sizeof (env), "%u", (unsigned)rows);
 setenv("LINES", env, 1);
 snprintf(env, sizeof (env), "%u", (unsigned)cols);
 setenv("COLUMNS", env, 1);

 return (1);
}
