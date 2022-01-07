
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fd; } ;
typedef TYPE_1__ FILE ;



int
ferror(FILE *stream)
{

 return (stream == ((void*)0) || stream->fd < 0);
}
