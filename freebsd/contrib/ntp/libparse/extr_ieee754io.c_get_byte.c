
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* offsets_t ;
typedef scalar_t__ bufp ;


 int debug ;
 int printf (char*,unsigned int,int,unsigned char) ;

__attribute__((used)) static unsigned char
get_byte(
  unsigned char *bufp,
  offsets_t offset,
  int *fieldindex
  )
{
  unsigned char val;

  val = *(bufp + offset[*fieldindex]);




  (*fieldindex)++;
  return val;
}
