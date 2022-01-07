
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct dpv_file_node {char* name; struct dpv_file_node* next; } ;
struct TYPE_2__ {int colors; char* backtitle; } ;


 int DPV_DISPLAY_LIMIT ;
 char* DPV_DONE_DEFAULT ;
 char* DPV_FAIL_DEFAULT ;
 char* DPV_PENDING_DEFAULT ;
 int ENV_MSG_DONE ;
 int ENV_MSG_FAIL ;
 int ENV_MSG_PENDING ;
 int EXIT_FAILURE ;
 int FM_DONE ;
 int FM_FAIL ;
 int FM_PEND ;
 char* aprompt ;
 int * backtitle ;
 scalar_t__ debug ;
 int dheight ;
 int dialog_maxcols () ;
 int dialog_maxrows () ;
 scalar_t__ dialog_prompt_longestline (char*,int) ;
 scalar_t__ dialog_prompt_nlstate (char*) ;
 int dialog_prompt_numlines (char*,scalar_t__) ;
 scalar_t__ dialog_prompt_wrappedlines (char*,int,int) ;
 TYPE_1__ dialog_vars ;
 int display_limit ;
 int dlg_put_backtitle () ;
 char* done ;
 int done_lsize ;
 int done_rsize ;
 int done_size ;
 int dprompt_clear () ;
 int dprompt_free_mask ;
 unsigned int dpv_nfiles ;
 int dwidth ;
 int errx (int ,char*) ;
 char* fail ;
 int fail_lsize ;
 int fail_rsize ;
 int fail_size ;
 int fheight ;
 char* getenv (int ) ;
 int init_dialog (int ,int ) ;
 int label_size ;
 char* malloc (int) ;
 char* msg_done ;
 char* msg_fail ;
 char* msg_pending ;
 scalar_t__ no_labels ;
 int pbar_size ;
 int pct_lsize ;
 int pct_rsize ;
 char* pend ;
 int pend_lsize ;
 int pend_rsize ;
 int pend_size ;
 char* pprompt ;
 int snprintf (char*,int,char*) ;
 int stdin ;
 int stdout ;
 int strlen (char*) ;
 scalar_t__ use_dialog ;
 scalar_t__ use_libdialog ;
 scalar_t__ use_shadow ;
 scalar_t__ use_xdialog ;
 int warnx (char*,int,...) ;
 scalar_t__ wide ;

void
dprompt_init(struct dpv_file_node *file_list)
{
 uint8_t nls = 0;
 int len;
 int max_cols;
 int max_rows;
 int nthfile;
 int numlines;
 struct dpv_file_node *curfile;




 if (use_libdialog && !debug) {
  init_dialog(stdin, stdout);
  dialog_vars.colors = 1;
  if (backtitle != ((void*)0)) {
   dialog_vars.backtitle = (char *)backtitle;
   dlg_put_backtitle();
  }
 }


 dwidth = label_size + pbar_size + 9;




 dheight = 5;
 max_rows = dialog_maxrows();

 if (backtitle != ((void*)0))
  max_rows -= use_shadow ? 3 : 2;
 if (use_libdialog && use_shadow)
  max_rows -= 2;

 numlines = dialog_prompt_numlines(pprompt, 0);
 if (debug)
  warnx("`-p text' is %i line%s long", numlines,
      numlines == 1 ? "" : "s");
 dheight += numlines;

 if (use_dialog) {
  dheight -= dialog_prompt_nlstate(pprompt);
  nls = dialog_prompt_nlstate(pprompt);
 } else if (use_xdialog) {
  if (pprompt == ((void*)0) || *pprompt == '\0')
   dheight++;
 } else if (use_libdialog) {
  if (pprompt != ((void*)0) && *pprompt != '\0')
   dheight--;
 }

 if (display_limit == 0 || display_limit > DPV_DISPLAY_LIMIT)
  display_limit = DPV_DISPLAY_LIMIT;

 for (; display_limit > 0; display_limit--) {
  nthfile = numlines = 0;
  fheight = (int)dpv_nfiles > display_limit ?
      (unsigned int)display_limit : dpv_nfiles;
  for (curfile = file_list; curfile != ((void*)0);
      curfile = curfile->next) {
   nthfile++;
   numlines += dialog_prompt_numlines(curfile->name, nls);
   if ((nthfile % display_limit) == 0) {
    if (numlines > fheight)
     fheight = numlines;
    numlines = nthfile = 0;
   }
  }
  if (numlines > fheight)
   fheight = numlines;
  if ((dheight + fheight +
      (int)dialog_prompt_numlines(aprompt, use_dialog) -
      (use_dialog ? (int)dialog_prompt_nlstate(aprompt) : 0))
      <= max_rows)
   break;
 }

 if ((max_rows - (use_shadow ? 5 : 4)) >= fheight)
  dheight += fheight;
 else
  fheight = 0;

 numlines = dialog_prompt_numlines(aprompt, use_dialog);
 if (debug)
  warnx("`-a text' is %i line%s long", numlines,
      numlines == 1 ? "" : "s");
 dheight += numlines;


 if (use_xdialog)
  dheight += dheight / 4;



 if (wide) {
  len = (int)dialog_prompt_longestline(pprompt, 0);
  if ((len + 4) > dwidth)
   dwidth = len + 4;
  len = (int)dialog_prompt_longestline(aprompt, 1);
  if ((len + 4) > dwidth)
   dwidth = len + 4;
 }


 max_cols = dialog_maxcols();
 if (max_cols > 0 && dwidth > max_cols)
  dwidth = max_cols;


 if (pbar_size > dwidth - 9) {
  pbar_size = dwidth - 9;
  label_size = 0;

 }
 if (pbar_size < 0)
  label_size = dwidth - 8;

 else if (label_size > (dwidth - pbar_size - 9) || wide)
  label_size = no_labels ? 0 : dwidth - pbar_size - 9;



 if (no_labels)
  label_size = 0;


 dheight += dialog_prompt_wrappedlines(pprompt, dwidth - 4, 0);
 dheight += dialog_prompt_wrappedlines(aprompt, dwidth - 4, 1);

 if (debug)
  warnx("dheight = %i dwidth = %i fheight = %i",
      dheight, dwidth, fheight);


 pct_lsize = (pbar_size - 4) / 2;
 pct_rsize = pct_lsize;

 if ((pct_rsize + pct_rsize + 4) != pbar_size)
  pct_rsize++;


 if (done == ((void*)0) && (done = msg_done) == ((void*)0)) {
  if ((done = getenv(ENV_MSG_DONE)) != ((void*)0))
   done_size = strlen(done);
  else {
   done_size = strlen(DPV_DONE_DEFAULT);
   if ((done = malloc(done_size + 1)) == ((void*)0))
    errx(EXIT_FAILURE, "Out of memory?!");
   dprompt_free_mask |= FM_DONE;
   snprintf(done, done_size + 1, DPV_DONE_DEFAULT);
  }
 }
 if (pbar_size < done_size) {
  done_lsize = done_rsize = 0;
  *(done + pbar_size) = '\0';
  done_size = pbar_size;
 } else {

  done_lsize = (pbar_size - done_size) / 2;
  done_rsize = done_lsize;

  if ((done_rsize + done_size + done_lsize) != pbar_size)
   done_rsize++;
 }


 if (fail == ((void*)0) && (fail = msg_fail) == ((void*)0)) {
  if ((fail = getenv(ENV_MSG_FAIL)) != ((void*)0))
   fail_size = strlen(fail);
  else {
   fail_size = strlen(DPV_FAIL_DEFAULT);
   if ((fail = malloc(fail_size + 1)) == ((void*)0))
    errx(EXIT_FAILURE, "Out of memory?!");
   dprompt_free_mask |= FM_FAIL;
   snprintf(fail, fail_size + 1, DPV_FAIL_DEFAULT);
  }
 }
 if (pbar_size < fail_size) {
  fail_lsize = fail_rsize = 0;
  *(fail + pbar_size) = '\0';
  fail_size = pbar_size;
 } else {

  fail_lsize = (pbar_size - fail_size) / 2;
  fail_rsize = fail_lsize;

  if ((fail_rsize + fail_size + fail_lsize) != pbar_size)
   fail_rsize++;
 }


 if (pend == ((void*)0) && (pend = msg_pending) == ((void*)0)) {
  if ((pend = getenv(ENV_MSG_PENDING)) != ((void*)0))
   pend_size = strlen(pend);
  else {
   pend_size = strlen(DPV_PENDING_DEFAULT);
   if ((pend = malloc(pend_size + 1)) == ((void*)0))
    errx(EXIT_FAILURE, "Out of memory?!");
   dprompt_free_mask |= FM_PEND;
   snprintf(pend, pend_size + 1, DPV_PENDING_DEFAULT);
  }
 }
 if (pbar_size < pend_size) {
  pend_lsize = pend_rsize = 0;
  *(pend + pbar_size) = '\0';
  pend_size = pbar_size;
 } else {

  pend_lsize = (pbar_size - pend_size) / 2;
  pend_rsize = pend_lsize;

  if ((pend_rsize + pend_lsize + pend_size) != pbar_size)
   pend_rsize++;
 }

 if (debug)
  warnx("label_size = %i pbar_size = %i", label_size, pbar_size);

 dprompt_clear();
}
