
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
typedef TYPE_1__ FILE ;


 int EOF ;
 int close (int ) ;
 int free (TYPE_1__*) ;

int
fclose(FILE *stream)
{
 if (stream == ((void*)0))
  return EOF;
 close(stream->fd);
 free(stream);

 return (0);
}
