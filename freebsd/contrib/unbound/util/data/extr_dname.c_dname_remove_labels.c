
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int dname_remove_label (int **,size_t*) ;

void
dname_remove_labels(uint8_t** dname, size_t* len, int n)
{
 int i;
 for(i=0; i<n; i++)
  dname_remove_label(dname, len);
}
