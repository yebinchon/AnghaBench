
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option_data {size_t len; int* data; } ;


 int memcpy (unsigned char*,int*,int) ;

void
expand_search_domain_name(struct option_data *option, size_t *offset,
    unsigned char **domain_search)
{
 int label_len;
 size_t i, pointer;
 unsigned char *cursor;






 i = *offset;
 cursor = *domain_search;
 while (i < option->len) {
  label_len = option->data[i];
  if (label_len == 0) {




   *offset = i + 1;
   *domain_search = cursor;
   return;
  } else if (label_len & 0xC0) {

   pointer = ((label_len & ~(0xC0)) << 8) +
       option->data[i + 1];

   expand_search_domain_name(option, &pointer, &cursor);

   *offset = i + 2;
   *domain_search = cursor;
   return;
  }


  memcpy(cursor, option->data + i + 1, label_len);
  cursor[label_len] = '.';


  i += label_len + 1;
  cursor += label_len + 1;
 }
}
