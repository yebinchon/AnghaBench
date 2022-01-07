
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int SIZE_MAX ;
 scalar_t__ UINT64_MAX ;
 int _ (char*) ;
 int assert (int) ;
 int free (scalar_t__*) ;
 int message_fatal (int ,...) ;
 scalar_t__* opt_block_list ;
 scalar_t__ str_to_uint64 (char*,char*,int ,scalar_t__) ;
 char* strchr (char*,char) ;
 scalar_t__* xmalloc (size_t) ;

__attribute__((used)) static void
parse_block_list(char *str)
{

 if (str[0] == '\0' || str[0] == ',')
  message_fatal(_("%s: Invalid argument to --block-list"), str);


 size_t count = 1;
 for (size_t i = 0; str[i] != '\0'; ++i)
  if (str[i] == ',')
   ++count;


 if (count > SIZE_MAX / sizeof(uint64_t) - 1)
  message_fatal(_("%s: Too many arguments to --block-list"),
    str);



 free(opt_block_list);
 opt_block_list = xmalloc((count + 1) * sizeof(uint64_t));

 for (size_t i = 0; i < count; ++i) {

  char *p = strchr(str, ',');
  if (p != ((void*)0))
   *p = '\0';

  if (str[0] == '\0') {





   assert(i > 0);
   opt_block_list[i] = opt_block_list[i - 1];
  } else {
   opt_block_list[i] = str_to_uint64("block-list", str,
     0, UINT64_MAX);


   if (opt_block_list[i] == 0) {
    if (i + 1 != count)
     message_fatal(_("0 can only be used "
       "as the last element "
       "in --block-list"));

    opt_block_list[i] = UINT64_MAX;
   }
  }

  str = p + 1;
 }


 opt_block_list[count] = 0;
 return;
}
