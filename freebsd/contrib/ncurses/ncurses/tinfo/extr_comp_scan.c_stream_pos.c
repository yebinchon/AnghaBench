
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long bufptr ;
 long bufstart ;
 long ftell (scalar_t__) ;
 scalar_t__ yyin ;

__attribute__((used)) static long
stream_pos(void)

{
    return (yyin ? ftell(yyin) : (bufptr ? bufptr - bufstart : 0));
}
