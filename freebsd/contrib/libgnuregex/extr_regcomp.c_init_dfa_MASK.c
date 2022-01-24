#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int wint_t ;
struct re_state_table_entry {int dummy; } ;
typedef  int /*<<< orphan*/  reg_errcode_t ;
struct TYPE_4__ {size_t nodes_alloc; unsigned int state_hash_mask; int mb_cur_max; int is_utf8; int map_notascii; int* sb_char; int /*<<< orphan*/ * state_table; int /*<<< orphan*/ * nodes; int /*<<< orphan*/  str_tree_storage_idx; } ;
typedef  TYPE_1__ re_dfa_t ;
typedef  void* re_bitset_ptr_t ;
typedef  int bitset_word_t ;
typedef  int /*<<< orphan*/  bitset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BIN_TREE_STORAGE_SIZE ; 
 int BITSET_WORDS ; 
 int BITSET_WORD_BITS ; 
 int /*<<< orphan*/  CODESET ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int MB_CUR_MAX ; 
 int /*<<< orphan*/  REG_ESPACE ; 
 int /*<<< orphan*/  REG_NOERROR ; 
 size_t SIZE_MAX ; 
 int WEOF ; 
 int /*<<< orphan*/  _NL_CTYPE_CODESET_NAME ; 
 int /*<<< orphan*/  _NL_CTYPE_MAP_TO_NONASCII ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char,int) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  re_token_t ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 char* FUNC11 (char*,char) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ utf8_sb_map ; 

__attribute__((used)) static reg_errcode_t
FUNC13 (re_dfa_t *dfa, size_t pat_len)
{
  unsigned int table_size;
#ifndef _LIBC
  char *codeset_name;
#endif

  FUNC7 (dfa, '\0', sizeof (re_dfa_t));

  /* Force allocation of str_tree_storage the first time.  */
  dfa->str_tree_storage_idx = BIN_TREE_STORAGE_SIZE;

  /* Avoid overflows.  */
  if (pat_len == SIZE_MAX)
    return REG_ESPACE;

  dfa->nodes_alloc = pat_len + 1;
  dfa->nodes = FUNC9 (re_token_t, dfa->nodes_alloc);

  /*  table_size = 2 ^ ceil(log pat_len) */
  for (table_size = 1; ; table_size <<= 1)
    if (table_size > pat_len)
      break;

  dfa->state_table = FUNC4 (sizeof (struct re_state_table_entry), table_size);
  dfa->state_hash_mask = table_size - 1;

  dfa->mb_cur_max = MB_CUR_MAX;
#ifdef _LIBC
  if (dfa->mb_cur_max == 6
      && strcmp (_NL_CURRENT (LC_CTYPE, _NL_CTYPE_CODESET_NAME), "UTF-8") == 0)
    dfa->is_utf8 = 1;
  dfa->map_notascii = (_NL_CURRENT_WORD (LC_CTYPE, _NL_CTYPE_MAP_TO_NONASCII)
		       != 0);
#else
# ifdef HAVE_LANGINFO_CODESET
  codeset_name = nl_langinfo (CODESET);
# else
  codeset_name = FUNC5 ("LC_ALL");
  if (codeset_name == NULL || codeset_name[0] == '\0')
    codeset_name = FUNC5 ("LC_CTYPE");
  if (codeset_name == NULL || codeset_name[0] == '\0')
    codeset_name = FUNC5 ("LANG");
  if (codeset_name == NULL)
    codeset_name = "";
  else if (FUNC11 (codeset_name, '.') !=  NULL)
    codeset_name = FUNC11 (codeset_name, '.') + 1;
# endif

  if (FUNC10 (codeset_name, "UTF-8") == 0
      || FUNC10 (codeset_name, "UTF8") == 0)
    dfa->is_utf8 = 1;

  /* We check exhaustively in the loop below if this charset is a
     superset of ASCII.  */
  dfa->map_notascii = 0;
#endif

#ifdef RE_ENABLE_I18N
  if (dfa->mb_cur_max > 1)
    {
      if (dfa->is_utf8)
	dfa->sb_char = (re_bitset_ptr_t) utf8_sb_map;
      else
	{
	  int i, j, ch;

	  dfa->sb_char = (re_bitset_ptr_t) calloc (sizeof (bitset_t), 1);
	  if (BE (dfa->sb_char == NULL, 0))
	    return REG_ESPACE;

	  /* Set the bits corresponding to single byte chars.  */
	  for (i = 0, ch = 0; i < BITSET_WORDS; ++i)
	    for (j = 0; j < BITSET_WORD_BITS; ++j, ++ch)
	      {
		wint_t wch = __btowc (ch);
		if (wch != WEOF)
		  dfa->sb_char[i] |= (bitset_word_t) 1 << j;
# ifndef _LIBC
		if (isascii (ch) && wch != ch)
		  dfa->map_notascii = 1;
# endif
	      }
	}
    }
#endif

  if (FUNC0 (dfa->nodes == NULL || dfa->state_table == NULL, 0))
    return REG_ESPACE;
  return REG_NOERROR;
}