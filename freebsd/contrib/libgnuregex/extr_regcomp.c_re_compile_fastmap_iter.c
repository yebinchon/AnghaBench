
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchar_t ;
typedef int state ;
struct TYPE_13__ {int syntax; int can_be_null; scalar_t__ buffer; } ;
typedef TYPE_4__ regex_t ;
typedef scalar_t__ re_token_type_t ;
struct TYPE_10__ {int nelem; int* elems; } ;
struct TYPE_14__ {TYPE_1__ nodes; } ;
typedef TYPE_5__ re_dfastate_t ;
struct TYPE_15__ {int mb_cur_max; int nodes_len; TYPE_3__* nodes; } ;
typedef TYPE_6__ re_dfa_t ;
struct TYPE_16__ {int nmbchars; int * mbchars; scalar_t__ nequiv_classes; scalar_t__ nranges; scalar_t__ non_match; scalar_t__ nchar_classes; scalar_t__ ncoll_syms; } ;
typedef TYPE_7__ re_charset_t ;
typedef char mbstate_t ;
typedef int mbs ;
typedef scalar_t__ int32_t ;
typedef int bitset_word_t ;
struct TYPE_11__ {unsigned char c; int* sbcset; TYPE_7__* mbcset; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_2__ opr; scalar_t__ mb_partial; } ;


 int BITSET_WORDS ;
 int BITSET_WORD_BITS ;
 scalar_t__ CHARACTER ;
 scalar_t__ COMPLEX_BRACKET ;
 scalar_t__ END_OF_RE ;
 int LC_COLLATE ;
 scalar_t__ OP_PERIOD ;
 scalar_t__ OP_UTF8_PERIOD ;
 int RE_ICASE ;
 int SBC_MAX ;
 scalar_t__ SIMPLE_BRACKET ;
 int _NL_COLLATE_NRULES ;
 int _NL_COLLATE_TABLEMB ;
 scalar_t__ _NL_CURRENT (int ,int ) ;
 scalar_t__ _NL_CURRENT_WORD (int ,int ) ;
 size_t __mbrtowc (int *,char const*,int,char*) ;
 size_t __wcrtomb (char*,int ,char*) ;
 unsigned char* alloca (int) ;
 int memset (char*,char,int) ;
 int re_set_fastmap (char*,int,unsigned char) ;
 int towlower (int ) ;

__attribute__((used)) static void
re_compile_fastmap_iter (regex_t *bufp, const re_dfastate_t *init_state,
    char *fastmap)
{
  re_dfa_t *dfa = (re_dfa_t *) bufp->buffer;
  int node_cnt;
  int icase = (dfa->mb_cur_max == 1 && (bufp->syntax & RE_ICASE));
  for (node_cnt = 0; node_cnt < init_state->nodes.nelem; ++node_cnt)
    {
      int node = init_state->nodes.elems[node_cnt];
      re_token_type_t type = dfa->nodes[node].type;

      if (type == CHARACTER)
 {
   re_set_fastmap (fastmap, icase, dfa->nodes[node].opr.c);
 }
      else if (type == SIMPLE_BRACKET)
 {
   int i, ch;
   for (i = 0, ch = 0; i < BITSET_WORDS; ++i)
     {
       int j;
       bitset_word_t w = dfa->nodes[node].opr.sbcset[i];
       for (j = 0; j < BITSET_WORD_BITS; ++j, ++ch)
  if (w & ((bitset_word_t) 1 << j))
    re_set_fastmap (fastmap, icase, ch);
     }
 }
      else if (type == OP_PERIOD



        || type == END_OF_RE)
 {
   memset (fastmap, '\1', sizeof (char) * SBC_MAX);
   if (type == END_OF_RE)
     bufp->can_be_null = 1;
   return;
 }
    }
}
