
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_15__ {int dcols; int drows; int cols; int maxgrow; int rows; int nrow; int nbuf; int * buf; struct TYPE_15__* link; int working; TYPE_1__* form; } ;
struct TYPE_14__ {int status; int curcol; int currow; int * w; TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef int FIELD_CELL ;
typedef TYPE_2__ FIELD ;


 int * Address_Of_Nth_Buffer (TYPE_2__*,int) ;
 int Buffer_Length (TYPE_2__*) ;
 int Buffer_To_Window (TYPE_2__*,int *) ;
 int ClrStatus (TYPE_2__*,int ) ;
 scalar_t__ ERR ;
 int FALSE ;
 scalar_t__ Growable (TYPE_2__*) ;
 int Minimum (int,int) ;
 int SetStatus (TYPE_2__*,int ) ;
 int Set_Field_Window_Attributes (TYPE_2__*,int *) ;
 int Single_Line_Field (TYPE_2__*) ;
 int Synchronize_Buffer (TYPE_1__*) ;
 int T (int ) ;
 int TRUE ;
 int T_CREATE (char*) ;
 int Total_Buffer_Size (TYPE_2__*) ;
 int _MAY_GROW ;
 int _POSTED ;
 int assert (int) ;
 int delwin (int *) ;
 int free (int *) ;
 scalar_t__ malloc (int ) ;
 int myBLANK ;
 int myZEROS ;
 int * newpad (int,int) ;
 int untouchwin (int *) ;
 int werase (int *) ;
 int wmove (int *,int ,int ) ;
 scalar_t__ wresize (int ,int,int) ;

__attribute__((used)) static bool
Field_Grown(FIELD *field, int amount)
{
  bool result = FALSE;

  if (field && Growable(field))
    {
      bool single_line_field = Single_Line_Field(field);
      int old_buflen = Buffer_Length(field);
      int new_buflen;
      int old_dcols = field->dcols;
      int old_drows = field->drows;
      FIELD_CELL *oldbuf = field->buf;
      FIELD_CELL *newbuf;

      int growth;
      FORM *form = field->form;
      bool need_visual_update = ((form != (FORM *)0) &&
     (form->status & _POSTED) &&
     (form->current == field));

      if (need_visual_update)
 Synchronize_Buffer(form);

      if (single_line_field)
 {
   growth = field->cols * amount;
   if (field->maxgrow)
     growth = Minimum(field->maxgrow - field->dcols, growth);
   field->dcols += growth;
   if (field->dcols == field->maxgrow)
     ClrStatus(field, _MAY_GROW);
 }
      else
 {
   growth = (field->rows + field->nrow) * amount;
   if (field->maxgrow)
     growth = Minimum(field->maxgrow - field->drows, growth);
   field->drows += growth;
   if (field->drows == field->maxgrow)
     ClrStatus(field, _MAY_GROW);
 }

      new_buflen = Buffer_Length(field);
      newbuf = (FIELD_CELL *)malloc(Total_Buffer_Size(field));
      if (!newbuf)
 {

   field->dcols = old_dcols;
   field->drows = old_drows;
   if ((single_line_field && (field->dcols != field->maxgrow)) ||
       (!single_line_field && (field->drows != field->maxgrow)))
     SetStatus(field, _MAY_GROW);
 }
      else
 {



   int i, j;
   FIELD_CELL *old_bp;
   FIELD_CELL *new_bp;

   result = TRUE;

   T((T_CREATE("fieldcell %p"), (void *)newbuf));
   field->buf = newbuf;
   for (i = 0; i <= field->nbuf; i++)
     {
       new_bp = Address_Of_Nth_Buffer(field, i);
       old_bp = oldbuf + i * (1 + old_buflen);
       for (j = 0; j < old_buflen; ++j)
  new_bp[j] = old_bp[j];
       while (j < new_buflen)
  new_bp[j++] = myBLANK;
       new_bp[new_buflen] = myZEROS;
     }






   if (need_visual_update && result)
     {
       WINDOW *new_window = newpad(field->drows, field->dcols);

       if (new_window != 0)
  {
    assert(form != (FORM *)0);
    if (form->w)
      delwin(form->w);
    form->w = new_window;
    Set_Field_Window_Attributes(field, form->w);
    werase(form->w);
    Buffer_To_Window(field, form->w);
    untouchwin(form->w);
    wmove(form->w, form->currow, form->curcol);
  }
       else
  result = FALSE;
     }

   if (result)
     {
       free(oldbuf);

       if (field != field->link)
  {
    FIELD *linked_field;

    for (linked_field = field->link;
         linked_field != field;
         linked_field = linked_field->link)
      {
        linked_field->buf = field->buf;
        linked_field->drows = field->drows;
        linked_field->dcols = field->dcols;
      }
  }
     }
   else
     {

       field->dcols = old_dcols;
       field->drows = old_drows;
       field->buf = oldbuf;
       if ((single_line_field &&
     (field->dcols != field->maxgrow)) ||
    (!single_line_field &&
     (field->drows != field->maxgrow)))
  SetStatus(field, _MAY_GROW);
       free(newbuf);
     }
 }
    }
  return (result);
}
