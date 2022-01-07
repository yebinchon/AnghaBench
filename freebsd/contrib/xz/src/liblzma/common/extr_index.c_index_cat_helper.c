
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int compressed_base; int uncompressed_base; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_6__ {TYPE_3__ node; int block_number_base; int number; } ;
typedef TYPE_1__ index_stream ;
struct TYPE_7__ {int streams; scalar_t__ block_number_add; scalar_t__ stream_number_add; scalar_t__ file_size; scalar_t__ uncompressed_size; } ;
typedef TYPE_2__ index_cat_info ;


 int index_tree_append (int ,TYPE_3__*) ;

__attribute__((used)) static void
index_cat_helper(const index_cat_info *info, index_stream *this)
{
 index_stream *left = (index_stream *)(this->node.left);
 index_stream *right = (index_stream *)(this->node.right);

 if (left != ((void*)0))
  index_cat_helper(info, left);

 this->node.uncompressed_base += info->uncompressed_size;
 this->node.compressed_base += info->file_size;
 this->number += info->stream_number_add;
 this->block_number_base += info->block_number_add;
 index_tree_append(info->streams, &this->node);

 if (right != ((void*)0))
  index_cat_helper(info, right);

 return;
}
