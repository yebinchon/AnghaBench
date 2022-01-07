
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 int curl_download_data (int ) ;
 int data ;
 int data_create_paths (int ,char const*) ;
 int ensure_directory_exists (char const*) ;
 int g_data ;
 int * g_data_dir ;
 scalar_t__ stamp_check (char const*,int ) ;
 int stamp_write (char const*,int ,int) ;
 int * strdup (char const*) ;

int data_init(char const* dir) {
    int err;

    if (dir == ((void*)0))
        return EINVAL;


    err = ensure_directory_exists(dir);
    if (err != 0)
        return err;


    g_data_dir = strdup(dir);
    if (g_data_dir == ((void*)0))
        return ENOMEM;

    err = data_create_paths(g_data, dir);
    if (err != 0)
        return err;






    if (stamp_check(dir, data))
        return 0;

    err = curl_download_data(data);
    if (err != 0)
        goto out;

out:

    stamp_write(dir, data, err);
    return err;
}
