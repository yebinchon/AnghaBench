
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct huffman_table_entry {int length; int value; } ;
struct huffman_code {int numentries; TYPE_1__* tree; } ;
struct archive_read {int archive; } ;
struct TYPE_2__ {int* branches; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int archive_set_error (int *,int ,char*) ;

__attribute__((used)) static int
make_table_recurse(struct archive_read *a, struct huffman_code *code, int node,
                   struct huffman_table_entry *table, int depth,
                   int maxdepth)
{
  int currtablesize, i, ret = (ARCHIVE_OK);

  if (!code->tree)
  {
    archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                      "Huffman tree was not created.");
    return (ARCHIVE_FATAL);
  }
  if (node < 0 || node >= code->numentries)
  {
    archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                      "Invalid location to Huffman tree specified.");
    return (ARCHIVE_FATAL);
  }

  currtablesize = 1 << (maxdepth - depth);

  if (code->tree[node].branches[0] ==
    code->tree[node].branches[1])
  {
    for(i = 0; i < currtablesize; i++)
    {
      table[i].length = depth;
      table[i].value = code->tree[node].branches[0];
    }
  }
  else if (node < 0)
  {
    for(i = 0; i < currtablesize; i++)
      table[i].length = -1;
  }
  else
  {
    if(depth == maxdepth)
    {
      table[0].length = maxdepth + 1;
      table[0].value = node;
    }
    else
    {
      ret |= make_table_recurse(a, code, code->tree[node].branches[0], table,
                                depth + 1, maxdepth);
      ret |= make_table_recurse(a, code, code->tree[node].branches[1],
                         table + currtablesize / 2, depth + 1, maxdepth);
    }
  }
  return ret;
}
