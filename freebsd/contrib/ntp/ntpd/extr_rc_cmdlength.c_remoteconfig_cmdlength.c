
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
remoteconfig_cmdlength(
 const char *src_buf,
 const char *src_end
 )
{
 const char *scan;
 unsigned char ch;


 while (src_end != src_buf) {
  ch = src_end[-1];
  if (ch > ' ' && ch < 128)
   break;
  --src_end;
 }

 for (scan = src_buf; scan != src_end; ++scan) {
  ch = scan[0];
  if ((ch < ' ' || ch >= 128) && ch != '\t')
   break;
 }
 return (size_t)(scan - src_buf);
}
