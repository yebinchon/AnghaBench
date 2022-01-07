
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ isspace (char) ;

int fst_read_next_text_param(const char *params, char *buf, size_t buflen,
        char **endp)
{
 size_t max_chars_to_copy;
 char *cur_dest;

 *endp = (char *) params;
 while (isspace(**endp))
  (*endp)++;
 if (!**endp || buflen <= 1)
  return -EINVAL;

 max_chars_to_copy = buflen - 1;

 cur_dest = buf;
 while (**endp && !isspace(**endp) && max_chars_to_copy > 0) {
  *cur_dest = **endp;
  (*endp)++;
  cur_dest++;
  max_chars_to_copy--;
 }
 *cur_dest = 0;

 return 0;
}
