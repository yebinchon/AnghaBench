
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kafs_data {char* (* get_realm ) (struct kafs_data*,char*) ;} ;
typedef int buf ;


 scalar_t__ dns_find_cell (char const*,char*,int) ;
 int file_find_cell (struct kafs_data*,char const*,char**,int) ;
 char* stub1 (struct kafs_data*,char*) ;

int
_kafs_realm_of_cell(struct kafs_data *data,
      const char *cell, char **realm)
{
    char buf[1024];
    int ret;

    ret = file_find_cell(data, cell, realm, 1);
    if (ret == 0)
 return ret;
    if (dns_find_cell(cell, buf, sizeof(buf)) == 0) {
 *realm = (*data->get_realm)(data, buf);
 if(*realm != ((void*)0))
     return 0;
    }
    return file_find_cell(data, cell, realm, 0);
}
