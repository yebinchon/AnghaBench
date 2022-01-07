
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v7tar {int dummy; } ;
struct archive_write {int * format_data; } ;


 int ARCHIVE_OK ;
 int free (struct v7tar*) ;

__attribute__((used)) static int
archive_write_v7tar_free(struct archive_write *a)
{
 struct v7tar *v7tar;

 v7tar = (struct v7tar *)a->format_data;
 free(v7tar);
 a->format_data = ((void*)0);
 return (ARCHIVE_OK);
}
