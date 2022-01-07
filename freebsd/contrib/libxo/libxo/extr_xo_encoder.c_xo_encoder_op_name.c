
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_encoder_op_t ;
typedef int names ;



const char *
xo_encoder_op_name (xo_encoder_op_t op)
{
    static const char *names[] = {
          "unknown",
          "create",
          "open_container",
          "close_container",
          "open_list",
          "close_list",
          "open_leaf_list",
          "close_leaf_list",
          "open_instance",
          "close_instance",
          "string",
          "content",
          "finish",
          "flush",
          "destroy",
          "attr",
          "version",
          "options",
    };

    if (op > sizeof(names) / sizeof(names[0]))
 return "unknown";

    return names[op];
}
