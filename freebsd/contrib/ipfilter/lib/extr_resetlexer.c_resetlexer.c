
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pos ;
 int string_end ;
 int string_start ;
 int * string_val ;

void resetlexer()
{
 string_start = -1;
 string_end = -1;
 string_val = ((void*)0);
 pos = 0;
}
