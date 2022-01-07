
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef int archive_skip_callback ;
typedef int archive_read_callback ;
typedef int archive_open_callback ;
typedef int archive_close_callback ;


 int archive_read_open1 (struct archive*) ;
 int archive_read_set_callback_data (struct archive*,void*) ;
 int archive_read_set_close_callback (struct archive*,int *) ;
 int archive_read_set_open_callback (struct archive*,int *) ;
 int archive_read_set_read_callback (struct archive*,int *) ;
 int archive_read_set_skip_callback (struct archive*,int *) ;

int
archive_read_open2(struct archive *a, void *client_data,
    archive_open_callback *client_opener,
    archive_read_callback *client_reader,
    archive_skip_callback *client_skipper,
    archive_close_callback *client_closer)
{


 archive_read_set_callback_data(a, client_data);
 archive_read_set_open_callback(a, client_opener);
 archive_read_set_read_callback(a, client_reader);
 archive_read_set_skip_callback(a, client_skipper);
 archive_read_set_close_callback(a, client_closer);
 return archive_read_open1(a);
}
