
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 char* bufptr ;
 int feof (scalar_t__) ;
 scalar_t__ yyin ;

__attribute__((used)) static bool
end_of_stream(void)

{
    return ((yyin ? feof(yyin) : (bufptr && *bufptr == '\0'))
     ? TRUE : FALSE);
}
