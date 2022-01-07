
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct kafs_data {int (* afslog_uid ) (struct kafs_data*,char*,int ,int ,char const*) ;} ;


 int stub1 (struct kafs_data*,char*,int ,int ,char const*) ;

__attribute__((used)) static int
afslog_cells(struct kafs_data *data, char **cells, int max, uid_t uid,
      const char *homedir)
{
    int ret = 0;
    int i;
    for (i = 0; i < max; i++) {
        int er = (*data->afslog_uid)(data, cells[i], 0, uid, homedir);
 if (er)
     ret = er;
    }
    return ret;
}
