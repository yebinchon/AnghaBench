
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*,int) ;
 int symfile_complaints ;

__attribute__((used)) static void
ef_complaint (int arg1)
{
  complaint (&symfile_complaints,
      "Mismatched .ef symbol ignored starting at symnum %d", arg1);
}
