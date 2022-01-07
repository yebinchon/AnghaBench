
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {scalar_t__ read_data_offset; int * read_data_block; scalar_t__ read_data_requested; scalar_t__ read_data_is_posix_read; scalar_t__ read_data_remaining; scalar_t__ read_data_output_offset; } ;



void __archive_reset_read_data(struct archive * a)
{
 a->read_data_output_offset = 0;
 a->read_data_remaining = 0;
 a->read_data_is_posix_read = 0;
 a->read_data_requested = 0;


   a->read_data_block = ((void*)0);
   a->read_data_offset = 0;
}
