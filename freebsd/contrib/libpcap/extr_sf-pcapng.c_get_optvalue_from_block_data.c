
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option_header {size_t option_length; } ;
struct block_cursor {int dummy; } ;


 void* get_from_block_data (struct block_cursor*,size_t,char*) ;

__attribute__((used)) static void *
get_optvalue_from_block_data(struct block_cursor *cursor,
    struct option_header *opthdr, char *errbuf)
{
 size_t padded_option_len;
 void *optvalue;


 padded_option_len = opthdr->option_length;
 padded_option_len = ((padded_option_len + 3)/4)*4;

 optvalue = get_from_block_data(cursor, padded_option_len, errbuf);
 if (optvalue == ((void*)0)) {



  return (((void*)0));
 }

 return (optvalue);
}
