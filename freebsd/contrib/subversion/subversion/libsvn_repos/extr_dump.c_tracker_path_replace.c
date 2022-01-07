
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path_tracker_t ;


 int tracker_path_add (int *,char const*) ;

__attribute__((used)) static void
tracker_path_replace(path_tracker_t *tracker,
                     const char *path)
{


  tracker_path_add(tracker, path);
}
