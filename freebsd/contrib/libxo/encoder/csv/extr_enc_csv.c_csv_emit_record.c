
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xo_handle_t ;
typedef int uint32_t ;
typedef size_t ssize_t ;
struct TYPE_7__ {int f_flags; scalar_t__ f_value; scalar_t__ f_name; } ;
typedef TYPE_1__ leaf_t ;
struct TYPE_8__ {size_t c_leaf_depth; int c_flags; int c_value_buf; TYPE_1__* c_leaf; int c_data; int c_name_buf; } ;
typedef TYPE_2__ csv_private_t ;


 int CF_HEADER_DONE ;
 int CF_LEAFS_DONE ;
 int CF_NO_HEADER ;
 int LF_HAS_VALUE ;
 int QF_NEEDS_ESCAPE ;
 int QF_NEEDS_QUOTES ;
 int XOF_FLUSH ;
 int XOF_FLUSH_LINE ;
 int csv_append_newline (int *,TYPE_2__*) ;
 int csv_dbg (int *,TYPE_2__*,char*) ;
 int csv_escape (int *,char const*,int) ;
 int csv_quote_flags (int *,TYPE_2__*,char const*) ;
 int strlen (char const*) ;
 int xo_buf_append (int *,char const*,int) ;
 char* xo_buf_data (int *,scalar_t__) ;
 int xo_buf_reset (int *) ;
 int xo_flush_h (int *) ;
 int xo_get_flags (int *) ;

__attribute__((used)) static void
csv_emit_record (xo_handle_t *xop, csv_private_t *csv)
{
    csv_dbg(xop, csv, "csv: emit: ...\n");

    ssize_t fnum;
    uint32_t quote_flags;
    leaf_t *lp;


    if (csv->c_leaf_depth == 0)
 return;

    if (!(csv->c_flags & (CF_HEADER_DONE | CF_NO_HEADER))) {
 csv->c_flags |= CF_HEADER_DONE;

 for (fnum = 0; fnum < csv->c_leaf_depth; fnum++) {
     lp = &csv->c_leaf[fnum];
     const char *name = xo_buf_data(&csv->c_name_buf, lp->f_name);

     if (fnum != 0)
  xo_buf_append(&csv->c_data, ",", 1);

     xo_buf_append(&csv->c_data, name, strlen(name));
 }

 csv_append_newline(&csv->c_data, csv);
    }

    for (fnum = 0; fnum < csv->c_leaf_depth; fnum++) {
 lp = &csv->c_leaf[fnum];
 const char *value;

 if (lp->f_flags & LF_HAS_VALUE) {
     value = xo_buf_data(&csv->c_value_buf, lp->f_value);
 } else {
     value = "";
 }

 quote_flags = csv_quote_flags(xop, csv, value);

 if (fnum != 0)
     xo_buf_append(&csv->c_data, ",", 1);

 if (quote_flags & QF_NEEDS_QUOTES)
     xo_buf_append(&csv->c_data, "\"", 1);

 if (quote_flags & QF_NEEDS_ESCAPE)
     csv_escape(&csv->c_data, value, strlen(value));
 else
     xo_buf_append(&csv->c_data, value, strlen(value));

 if (quote_flags & QF_NEEDS_QUOTES)
     xo_buf_append(&csv->c_data, "\"", 1);
    }

    csv_append_newline(&csv->c_data, csv);


    if (xo_get_flags(xop) & (XOF_FLUSH | XOF_FLUSH_LINE))
 xo_flush_h(xop);


    for (fnum = 0; fnum < csv->c_leaf_depth; fnum++) {
 lp = &csv->c_leaf[fnum];

 lp->f_flags &= ~LF_HAS_VALUE;
 lp->f_value = 0;
    }

    xo_buf_reset(&csv->c_value_buf);





    csv->c_flags |= CF_LEAFS_DONE;
}
