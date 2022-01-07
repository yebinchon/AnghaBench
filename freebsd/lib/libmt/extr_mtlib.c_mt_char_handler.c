
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt_status_data {scalar_t__ error; size_t level; int * cur_sb; } ;
typedef int XML_Char ;


 int sbuf_bcat (int ,int const*,int) ;

void
mt_char_handler(void *user_data, const XML_Char *str, int len)
{
 struct mt_status_data *mtinfo;

 mtinfo = (struct mt_status_data *)user_data;
 if (mtinfo->error != 0)
  return;

 sbuf_bcat(mtinfo->cur_sb[mtinfo->level], str, len);
}
