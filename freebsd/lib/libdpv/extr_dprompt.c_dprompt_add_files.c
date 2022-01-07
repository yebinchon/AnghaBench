
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct dpv_file_node {scalar_t__ length; char* name; char* msg; scalar_t__ status; int read; struct dpv_file_node* next; } ;
typedef int pbar ;
typedef enum dprompt_state { ____Placeholder_dprompt_state } dprompt_state ;
 scalar_t__ DPV_STATUS_FAILED ;
 scalar_t__ DPV_STATUS_RUNNING ;
 scalar_t__ FALSE ;
 int FLABEL_MAX ;
 int HN_AUTOSCALE ;
 int HN_DIVISOR_1000 ;
 int HN_NOSPACE ;
 int PROMPT_MAX ;
 scalar_t__ TRUE ;
 char* dialog_prompt_lastline (char*,int) ;
 scalar_t__ dialog_prompt_nlstate (int ) ;
 scalar_t__ dialog_prompt_numlines (char*,scalar_t__) ;
 scalar_t__ dialog_test ;
 int display_limit ;
 char* done ;
 int done_lsize ;
 int done_rsize ;
 int dprompt_add (char const*,...) ;
 int dwidth ;
 char* fail ;
 int fail_lsize ;
 int fail_rsize ;
 int fheight ;
 char* gauge_color ;
 int humanize_number (char*,int,int ,char*,int ,int) ;
 int label_size ;
 int mesg_lsize ;
 int mesg_rsize ;
 int mesg_size ;
 char* msg ;
 scalar_t__ no_labels ;
 int pbar_size ;
 char* pct_lsize ;
 int pct_rsize ;
 int pend ;
 int pend_lsize ;
 int pend_rsize ;
 int pprompt ;
 int snprintf (char*,int,char*,...) ;
 int spin_char () ;
 int sprintf (char*,char*) ;
 int strlen (char*) ;
 int strncat (char*,char const*,int ) ;
 scalar_t__ use_color ;
 scalar_t__ use_colors ;
 scalar_t__ use_dialog ;
 scalar_t__ use_libdialog ;
 scalar_t__ use_shadow ;

__attribute__((used)) static int
dprompt_add_files(struct dpv_file_node *file_list,
    struct dpv_file_node *curfile, int pct)
{
 char c;
 char bold_code = 'b';
 char color_code = '4';
 uint8_t after_curfile = curfile != ((void*)0) ? FALSE : TRUE;
 uint8_t nls = 0;
 char *cp;
 char *lastline;
 char *name;
 const char *bg_code;
 const char *estext;
 const char *format;
 enum dprompt_state dstate;
 int estext_lsize;
 int estext_rsize;
 int flabel_size;
 int hlen;
 int lsize;
 int nlines = 0;
 int nthfile = 0;
 int pwidth;
 int rsize;
 struct dpv_file_node *fp;
 char flabel[FLABEL_MAX + 1];
 char human[32];
 char pbar[pbar_size + 16];
 char pbar_cap[sizeof(pbar)];
 char pbar_fill[sizeof(pbar)];



 if (use_colors || use_shadow) {
  color_code = gauge_color[0];

  bold_code = gauge_color[2];
 }




 *pbar = '\0';
 if (pbar_size >= 0 && pct >= 0 && curfile != ((void*)0) &&
     (curfile->length >= 0 || dialog_test)) {
  snprintf(pbar, pbar_size + 1, "%*s%3u%%%*s", pct_lsize, "",
      pct, pct_rsize, "");
  if (use_color) {

   pwidth = pct * pbar_size / 100;

   if ((pct * pbar_size % 100) > 50)
    pwidth++;






   *pbar_fill = '\0';
   *pbar_cap = '\0';
   strncat(pbar_fill, (const char *)(pbar), dwidth);
   *(pbar_fill + pwidth) = '\0';
   strncat(pbar_cap, (const char *)(pbar+pwidth), dwidth);


   snprintf(pbar, sizeof(pbar),
       "\\Z%c\\Zr\\Z%c%s%s%s\\Zn", bold_code, color_code,
       pbar_fill, "\\ZR", pbar_cap);
  }
 }

 for (fp = file_list; fp != ((void*)0); fp = fp->next) {
  flabel_size = label_size;
  name = fp->name;
  nthfile++;






  if (use_dialog)
   nls = dialog_prompt_nlstate(pprompt);
  nlines += dialog_prompt_numlines(name, nls);
  lastline = dialog_prompt_lastline(name, 1);
  if (name != lastline) {
   c = *lastline;
   *lastline = '\0';
   dprompt_add("%s", name);
   *lastline = c;
   name = lastline;
  }


  if ((use_dialog || use_libdialog) && use_color) {
   cp = name;
   while (*cp != '\0') {
    if (*cp == '\\' && *(cp + 1) != '\0' &&
        *(++cp) == 'Z' && *(cp + 1) != '\0') {
     cp++;
     flabel_size += 3;
    }
    cp++;
   }
   if (flabel_size > FLABEL_MAX)
    flabel_size = FLABEL_MAX;
  }


  if (pbar_size < 0 && flabel_size <= FLABEL_MAX - 2 &&
      no_labels == FALSE)
   flabel_size += 2;


  if (snprintf(flabel, flabel_size + 1, "%s", name) >
      flabel_size) sprintf(flabel + flabel_size - 3, "...");




  if (fp == curfile && pct < 100) {





   cp = flabel + strlen(flabel);
   if (cp < (flabel + flabel_size))
    snprintf(cp, flabel_size -
        (cp - flabel) + 1, "...");


   dprompt_add("%s%-*s%s %c", use_color ? "\\Zb" : "",
       flabel_size, flabel, use_color ? "\\Zn" : "",
       spin_char());
  } else
   dprompt_add("%-*s%s %s", flabel_size,
       flabel, use_color ? "\\Zn" : "", " ");




  dstate = 130;
  if (fp->msg != ((void*)0))
   dstate = 134;
  else if (pbar_size < 0)
   dstate = 130;
  else if (pbar_size < 4)
   dstate = 131;
  else if (after_curfile)
   dstate = 128;
  else if (fp == curfile) {
   if (*pbar == '\0') {
    if (fp->length < 0)
     dstate = 133;
    else if (fp->status == DPV_STATUS_RUNNING)
     dstate = 133;
    else
     dstate = 132;
   }
   else if (dialog_test)
    dstate = pct < 100 ?
        129 : 132;
   else if (fp->status == DPV_STATUS_RUNNING)
    dstate = fp->length < 0 ?
        133 : 129;
   else
    dstate = fp->length < 0 ?
        133 : 132;
  } else {
   if (dialog_test)
    dstate = 132;
   else
    dstate = fp->length < 0 ?
        133 : 132;
  }
  format = use_color ?
      " [\\Z%c%s%-*s%s%-*s\\Zn]\\n" :
      " [%-*s%s%-*s]\\n";
  if (fp->status == DPV_STATUS_FAILED) {
   bg_code = "\\Zr\\Z1";
   estext_lsize = fail_lsize;
   estext_rsize = fail_rsize;
   estext = fail;
  } else {
   bg_code = "\\Zr\\Z2";
   estext_lsize = done_lsize;
   estext_rsize = done_rsize;
   estext = done;
  }
  switch (dstate) {
  case 128:
   dprompt_add(" [%-*s%s%-*s]\\n",
       pend_lsize, "", pend, pend_rsize, "");
   break;
  case 129:
   dprompt_add(" [%s]\\n", pbar);
   break;
  case 132:
   if (use_color)
    dprompt_add(format, bold_code, bg_code,
        estext_lsize, "", estext,
        estext_rsize, "");
   else
    dprompt_add(format,
        estext_lsize, "", estext,
        estext_rsize, "");
   break;
  case 133:
   humanize_number(human, pbar_size + 2, fp->read, "",
       HN_AUTOSCALE, HN_NOSPACE | HN_DIVISOR_1000);


   hlen = (int)strlen(human);
   lsize = (pbar_size - hlen) / 2;
   rsize = lsize;
   if ((lsize+hlen+rsize) != pbar_size)
    rsize++;

   if (use_color)
    dprompt_add(format, bold_code, bg_code,
        lsize, "", human, rsize, "");
   else
    dprompt_add(format,
        lsize, "", human, rsize, "");
   break;
  case 134:
   snprintf(msg, PROMPT_MAX + 1, "%s", fp->msg);
   if (pbar_size < (mesg_size = strlen(msg))) {
    mesg_lsize = mesg_rsize = 0;
    *(msg + pbar_size) = '\0';
    mesg_size = pbar_size;
   } else {
    mesg_lsize = (pbar_size - mesg_size) / 2;
    mesg_rsize = mesg_lsize;
    if ((mesg_rsize + mesg_size + mesg_lsize)
        != pbar_size)
     mesg_rsize++;
   }
   if (use_color)
    dprompt_add(format, bold_code, bg_code,
        mesg_lsize, "", msg, mesg_rsize, "");
   else
    dprompt_add(format, mesg_lsize, "", msg,
        mesg_rsize, "");
   break;
  case 131:
   if (use_color)
    dprompt_add(format, bold_code, bg_code,
        pbar_size, "", "", 0, "");
   else
    dprompt_add(format, pbar_size, "", "", 0, "");
   break;
  case 130:

  default:
   dprompt_add(" \\n");





  }


  if (nthfile >= display_limit)
   break;


  if (fp == curfile)
   after_curfile = TRUE;
 }
 while (nlines < fheight) {
  dprompt_add("\n");
  nlines++;
 }

 return (nthfile);
}
