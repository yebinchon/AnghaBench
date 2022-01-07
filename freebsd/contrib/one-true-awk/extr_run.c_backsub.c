
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void backsub(char **pb_ptr, char **sptr_ptr)
{
 char *pb = *pb_ptr, *sptr = *sptr_ptr;

 if (sptr[1] == '\\') {
  if (sptr[2] == '\\' && sptr[3] == '&') {
   *pb++ = '\\';
   *pb++ = '&';
   sptr += 4;
  } else if (sptr[2] == '&') {
   *pb++ = '\\';
   sptr += 2;
  } else {
   *pb++ = *sptr++;
   *pb++ = *sptr++;
  }
 } else if (sptr[1] == '&') {
  sptr++;
  *pb++ = *sptr++;
 } else
  *pb++ = *sptr++;

 *pb_ptr = pb;
 *sptr_ptr = sptr;
}
