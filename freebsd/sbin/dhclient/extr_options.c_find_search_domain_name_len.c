
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option_data {size_t len; int* data; } ;


 int warning (char*) ;

int
find_search_domain_name_len(struct option_data *option, size_t *offset)
{
 int domain_name_len, label_len, pointed_len;
 size_t i, pointer;

 domain_name_len = 0;

 i = *offset;
 while (i < option->len) {
  label_len = option->data[i];
  if (label_len == 0) {




   *offset = i + 1;
   return (domain_name_len);
  } else if (label_len & 0xC0) {

   if (i + 1 >= option->len) {

    warning("Truncated pointer in DHCP Domain "
        "Search option.");
    return (-1);
   }

   pointer = ((label_len & ~(0xC0)) << 8) +
       option->data[i + 1];
   if (pointer >= *offset) {




    warning("Invalid forward pointer in DHCP "
        "Domain Search option compression.");
    return (-1);
   }

   pointed_len = find_search_domain_name_len(option,
       &pointer);
   domain_name_len += pointed_len;

   *offset = i + 2;
   return (domain_name_len);
  }

  if (i + label_len >= option->len) {
   warning("Truncated label in DHCP Domain Search "
       "option.");
   return (-1);
  }





  domain_name_len += label_len + 1;


  i += label_len + 1;
 }

 warning("Truncated DHCP Domain Search option.");

 return (-1);
}
