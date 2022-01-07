
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {int dummy; } ;


 int bitmap_nbits (struct bitmap*) ;

size_t
bitmap_nbytes(struct bitmap *b)
{
 return (bitmap_nbits(b) + 7) / 8;
}
