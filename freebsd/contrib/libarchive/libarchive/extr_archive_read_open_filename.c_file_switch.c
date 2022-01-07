
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int file_close2 (struct archive*,void*) ;
 int file_open (struct archive*,void*) ;

__attribute__((used)) static int
file_switch(struct archive *a, void *client_data1, void *client_data2)
{
 file_close2(a, client_data1);
 return file_open(a, client_data2);
}
