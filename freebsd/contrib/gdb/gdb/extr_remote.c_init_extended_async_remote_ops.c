
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* to_shortname; char* to_longname; char* to_doc; int to_mourn_inferior; int to_create_inferior; int to_open; } ;


 TYPE_1__ extended_async_remote_ops ;
 int extended_remote_async_create_inferior ;
 int extended_remote_async_open ;
 int extended_remote_mourn ;
 TYPE_1__ remote_async_ops ;

__attribute__((used)) static void
init_extended_async_remote_ops (void)
{
  extended_async_remote_ops = remote_async_ops;

  extended_async_remote_ops.to_shortname = "extended-async";
  extended_async_remote_ops.to_longname =
    "Extended remote serial target in async gdb-specific protocol";
  extended_async_remote_ops.to_doc =
    "Use a remote computer via a serial line, using an async gdb-specific protocol.\nSpecify the serial device it is connected to (e.g. /dev/ttya).",

    extended_async_remote_ops.to_open = extended_remote_async_open;
  extended_async_remote_ops.to_create_inferior = extended_remote_async_create_inferior;
  extended_async_remote_ops.to_mourn_inferior = extended_remote_mourn;
}
