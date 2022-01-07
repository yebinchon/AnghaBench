; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kld.c_initialize_kld_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kld.c_initialize_kld_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cmd_list_element = type { i32 }

@kld_relocate_section_addresses = common dso_local global i32 0, align 4
@kld_so_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@kld_free_so = common dso_local global i32 0, align 4
@kld_clear_solib = common dso_local global i32 0, align 4
@kld_solib_create_inferior_hook = common dso_local global i32 0, align 4
@kld_special_symbol_handling = common dso_local global i32 0, align 4
@kld_current_sos = common dso_local global i32 0, align 4
@kld_open_symbol_file_object = common dso_local global i32 0, align 4
@kld_in_dynsym_resolve_code = common dso_local global i32 0, align 4
@kld_find_and_open_solib = common dso_local global i32 0, align 4
@current_target_so_ops = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"add-kld\00", align 1
@class_files = common dso_local global i32 0, align 4
@kgdb_add_kld_cmd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"Usage: add-kld FILE\0ALoad the symbols from the kernel loadable module FILE.\00", align 1
@filename_completer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_kld_target() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @kld_relocate_section_addresses, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kld_so_ops, i32 0, i32 8), align 4
  %3 = load i32, i32* @kld_free_so, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kld_so_ops, i32 0, i32 7), align 4
  %4 = load i32, i32* @kld_clear_solib, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kld_so_ops, i32 0, i32 6), align 4
  %5 = load i32, i32* @kld_solib_create_inferior_hook, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kld_so_ops, i32 0, i32 5), align 4
  %6 = load i32, i32* @kld_special_symbol_handling, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kld_so_ops, i32 0, i32 4), align 4
  %7 = load i32, i32* @kld_current_sos, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kld_so_ops, i32 0, i32 3), align 4
  %8 = load i32, i32* @kld_open_symbol_file_object, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kld_so_ops, i32 0, i32 2), align 4
  %9 = load i32, i32* @kld_in_dynsym_resolve_code, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kld_so_ops, i32 0, i32 1), align 4
  %10 = load i32, i32* @kld_find_and_open_solib, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kld_so_ops, i32 0, i32 0), align 4
  store %struct.TYPE_3__* @kld_so_ops, %struct.TYPE_3__** @current_target_so_ops, align 8
  %11 = load i32, i32* @class_files, align 4
  %12 = load i32, i32* @kgdb_add_kld_cmd, align 4
  %13 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_list_element* %13, %struct.cmd_list_element** %1, align 8
  %14 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %15 = load i32, i32* @filename_completer, align 4
  %16 = call i32 @set_cmd_completer(%struct.cmd_list_element* %14, i32 %15)
  ret void
}

declare dso_local %struct.cmd_list_element* @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @set_cmd_completer(%struct.cmd_list_element*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
