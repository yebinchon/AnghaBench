
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ memusage_max; scalar_t__ min_version; int all_have_sizes; int idx; scalar_t__ stream_padding; } ;
typedef TYPE_1__ xz_file_info ;
struct TYPE_5__ {scalar_t__ memusage_max; scalar_t__ min_version; int all_have_sizes; int checks; int stream_padding; int uncompressed_size; int compressed_size; int blocks; int streams; int files; } ;


 scalar_t__ lzma_index_block_count (int ) ;
 int lzma_index_checks (int ) ;
 scalar_t__ lzma_index_file_size (int ) ;
 scalar_t__ lzma_index_stream_count (int ) ;
 scalar_t__ lzma_index_uncompressed_size (int ) ;
 TYPE_3__ totals ;

__attribute__((used)) static void
update_totals(const xz_file_info *xfi)
{

 ++totals.files;
 totals.streams += lzma_index_stream_count(xfi->idx);
 totals.blocks += lzma_index_block_count(xfi->idx);
 totals.compressed_size += lzma_index_file_size(xfi->idx);
 totals.uncompressed_size += lzma_index_uncompressed_size(xfi->idx);
 totals.stream_padding += xfi->stream_padding;
 totals.checks |= lzma_index_checks(xfi->idx);

 if (totals.memusage_max < xfi->memusage_max)
  totals.memusage_max = xfi->memusage_max;

 if (totals.min_version < xfi->min_version)
  totals.min_version = xfi->min_version;

 totals.all_have_sizes &= xfi->all_have_sizes;

 return;
}
