
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ out_chars ;
 scalar_t__ out_linecount ;

__attribute__((used)) static void
startoutput(void)
{
 out_chars = 0;
 out_linecount = 0;
}
