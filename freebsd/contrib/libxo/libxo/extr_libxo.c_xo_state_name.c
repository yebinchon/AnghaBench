
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_state_t ;
typedef int names ;



__attribute__((used)) static const char *
xo_state_name (xo_state_t state)
{
    static const char *names[] = {
 "init",
 "open_container",
 "close_container",
 "open_list",
 "close_list",
 "open_instance",
 "close_instance",
 "open_leaf_list",
 "close_leaf_list",
 "discarding",
 "marker",
 "emit",
 "emit_leaf_list",
 "finish",
 ((void*)0)
    };

    if (state < (sizeof(names) / sizeof(names[0])))
 return names[state];

    return "unknown";
}
