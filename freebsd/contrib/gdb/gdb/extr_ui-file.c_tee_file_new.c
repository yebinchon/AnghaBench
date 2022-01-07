
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct tee_file {int close_one; int close_two; struct ui_file* two; struct ui_file* one; int * magic; } ;


 int set_ui_file_data (struct ui_file*,struct tee_file*,int ) ;
 int set_ui_file_flush (struct ui_file*,int ) ;
 int set_ui_file_fputs (struct ui_file*,int ) ;
 int set_ui_file_isatty (struct ui_file*,int ) ;
 int set_ui_file_write (struct ui_file*,int ) ;
 int tee_file_delete ;
 int tee_file_flush ;
 int tee_file_fputs ;
 int tee_file_isatty ;
 int tee_file_magic ;
 int tee_file_write ;
 struct ui_file* ui_file_new () ;
 struct tee_file* xmalloc (int) ;

struct ui_file *
tee_file_new (struct ui_file *one, int close_one,
       struct ui_file *two, int close_two)
{
  struct ui_file *ui_file = ui_file_new ();
  struct tee_file *tee = xmalloc (sizeof (struct tee_file));
  tee->magic = &tee_file_magic;
  tee->one = one;
  tee->two = two;
  tee->close_one = close_one;
  tee->close_two = close_two;
  set_ui_file_data (ui_file, tee, tee_file_delete);
  set_ui_file_flush (ui_file, tee_file_flush);
  set_ui_file_write (ui_file, tee_file_write);
  set_ui_file_fputs (ui_file, tee_file_fputs);
  set_ui_file_isatty (ui_file, tee_file_isatty);
  return ui_file;
}
