
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_boolean_t ;
struct TYPE_4__ {char* name; int src_rev; int children; int kind; } ;
typedef TYPE_1__ mtcc_op_t ;
typedef int apr_pool_t ;


 int OP_ADD_DIR ;
 int OP_ADD_FILE ;
 int OP_OPEN_DIR ;
 int OP_OPEN_FILE ;
 int SVN_INVALID_REVNUM ;
 int apr_array_make (int *,int,int) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 char* apr_pstrdup (int *,char const*) ;

__attribute__((used)) static mtcc_op_t *
mtcc_op_create(const char *name,
               svn_boolean_t add,
               svn_boolean_t directory,
               apr_pool_t *result_pool)
{
  mtcc_op_t *op;

  op = apr_pcalloc(result_pool, sizeof(*op));
  op->name = name ? apr_pstrdup(result_pool, name) : "";

  if (add)
    op->kind = directory ? OP_ADD_DIR : OP_ADD_FILE;
  else
    op->kind = directory ? OP_OPEN_DIR : OP_OPEN_FILE;

  if (directory)
    op->children = apr_array_make(result_pool, 4, sizeof(mtcc_op_t *));

  op->src_rev = SVN_INVALID_REVNUM;

  return op;
}
