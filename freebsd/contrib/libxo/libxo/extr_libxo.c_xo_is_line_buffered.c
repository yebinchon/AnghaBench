
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ __flbf (int *) ;
 int fileno (int *) ;
 scalar_t__ isatty (int ) ;

__attribute__((used)) static int
xo_is_line_buffered (FILE *stream)
{




    if (isatty(fileno(stream)))
 return 1;

    return 0;
}
