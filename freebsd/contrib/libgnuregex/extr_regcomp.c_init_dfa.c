
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wint_t ;
struct re_state_table_entry {int dummy; } ;
typedef int reg_errcode_t ;
struct TYPE_4__ {size_t nodes_alloc; unsigned int state_hash_mask; int mb_cur_max; int is_utf8; int map_notascii; int* sb_char; int * state_table; int * nodes; int str_tree_storage_idx; } ;
typedef TYPE_1__ re_dfa_t ;
typedef void* re_bitset_ptr_t ;
typedef int bitset_word_t ;
typedef int bitset_t ;


 scalar_t__ BE (int,int ) ;
 int BIN_TREE_STORAGE_SIZE ;
 int BITSET_WORDS ;
 int BITSET_WORD_BITS ;
 int CODESET ;
 int LC_CTYPE ;
 int MB_CUR_MAX ;
 int REG_ESPACE ;
 int REG_NOERROR ;
 size_t SIZE_MAX ;
 int WEOF ;
 int _NL_CTYPE_CODESET_NAME ;
 int _NL_CTYPE_MAP_TO_NONASCII ;
 int _NL_CURRENT (int ,int ) ;
 scalar_t__ _NL_CURRENT_WORD (int ,int ) ;
 int __btowc (int) ;
 int * calloc (int,int) ;
 char* getenv (char*) ;
 scalar_t__ isascii (int) ;
 int memset (TYPE_1__*,char,int) ;
 char* nl_langinfo (int ) ;
 int * re_malloc (int ,size_t) ;
 int re_token_t ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ utf8_sb_map ;

__attribute__((used)) static reg_errcode_t
init_dfa (re_dfa_t *dfa, size_t pat_len)
{
  unsigned int table_size;

  char *codeset_name;


  memset (dfa, '\0', sizeof (re_dfa_t));


  dfa->str_tree_storage_idx = BIN_TREE_STORAGE_SIZE;


  if (pat_len == SIZE_MAX)
    return REG_ESPACE;

  dfa->nodes_alloc = pat_len + 1;
  dfa->nodes = re_malloc (re_token_t, dfa->nodes_alloc);


  for (table_size = 1; ; table_size <<= 1)
    if (table_size > pat_len)
      break;

  dfa->state_table = calloc (sizeof (struct re_state_table_entry), table_size);
  dfa->state_hash_mask = table_size - 1;

  dfa->mb_cur_max = MB_CUR_MAX;
  codeset_name = getenv ("LC_ALL");
  if (codeset_name == ((void*)0) || codeset_name[0] == '\0')
    codeset_name = getenv ("LC_CTYPE");
  if (codeset_name == ((void*)0) || codeset_name[0] == '\0')
    codeset_name = getenv ("LANG");
  if (codeset_name == ((void*)0))
    codeset_name = "";
  else if (strchr (codeset_name, '.') != ((void*)0))
    codeset_name = strchr (codeset_name, '.') + 1;


  if (strcasecmp (codeset_name, "UTF-8") == 0
      || strcasecmp (codeset_name, "UTF8") == 0)
    dfa->is_utf8 = 1;



  dfa->map_notascii = 0;
  if (BE (dfa->nodes == ((void*)0) || dfa->state_table == ((void*)0), 0))
    return REG_ESPACE;
  return REG_NOERROR;
}
