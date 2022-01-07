
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ offset; scalar_t__ size; } ;
typedef TYPE_1__ FILE ;



int
feof(FILE *stream)
{

 if (stream == ((void*)0))
  return 1;

 return (stream->offset >= stream->size);
}
