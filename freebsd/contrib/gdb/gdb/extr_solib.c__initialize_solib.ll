; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib.c__initialize_solib.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib.c__initialize_solib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"sharedlibrary\00", align 1
@class_files = common dso_local global i32 0, align 4
@sharedlibrary_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Load shared object library symbols for files matching REGEXP.\00", align 1
@info_sharedlibrary_command = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Status of loaded shared object libraries.\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"nosharedlibrary\00", align 1
@no_shared_libraries = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Unload all shared object library symbols.\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"auto-solib-add\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_boolean = common dso_local global i32 0, align 4
@auto_solib_add = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [333 x i8] c"Set autoloading of shared library symbols.\0AIf \22on\22, symbols from all shared object libraries will be loaded\0Aautomatically when the inferior begins execution, when the dynamic linker\0Ainforms gdb that a new library has been loaded, or when attaching to the\0Ainferior.  Otherwise, symbols must be loaded manually, using `sharedlibrary'.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"solib-absolute-prefix\00", align 1
@var_filename = common dso_local global i32 0, align 4
@solib_absolute_prefix = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [139 x i8] c"Set prefix for loading absolute shared library symbol files.\0AFor other (relative) files, you can add values using `set solib-search-path'.\00", align 1
@reload_shared_libraries = common dso_local global i32 0, align 4
@filename_completer = common dso_local global i32 0, align 4
@gdb_sysroot = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"solib-search-path\00", align 1
@var_string = common dso_local global i32 0, align 4
@solib_search_path = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [153 x i8] c"Set the search path for loading non-absolute shared library symbol files.\0AThis takes precedence over the environment variables PATH and LD_LIBRARY_PATH.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_solib() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @class_files, align 4
  %3 = load i32, i32* @sharedlibrary_command, align 4
  %4 = call i32 @add_com(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @info_sharedlibrary_command, align 4
  %6 = call i32 @add_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @class_files, align 4
  %8 = load i32, i32* @no_shared_libraries, align 4
  %9 = call i32 @add_com(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %7, i32 %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %10 = load i32, i32* @class_support, align 4
  %11 = load i32, i32* @var_boolean, align 4
  %12 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %10, i32 %11, i8* bitcast (i32* @auto_solib_add to i8*), i8* getelementptr inbounds ([333 x i8], [333 x i8]* @.str.6, i64 0, i64 0), i32* @setlist)
  %13 = call i32 @add_show_from_set(%struct.cmd_list_element* %12, i32* @showlist)
  %14 = load i32, i32* @class_support, align 4
  %15 = load i32, i32* @var_filename, align 4
  %16 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %14, i32 %15, i8* bitcast (i64* @solib_absolute_prefix to i8*), i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.8, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %16, %struct.cmd_list_element** %1, align 8
  %17 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %18 = call i32 @add_show_from_set(%struct.cmd_list_element* %17, i32* @showlist)
  %19 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %20 = load i32, i32* @reload_shared_libraries, align 4
  %21 = call i32 @set_cmd_cfunc(%struct.cmd_list_element* %19, i32 %20)
  %22 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %23 = load i32, i32* @filename_completer, align 4
  %24 = call i32 @set_cmd_completer(%struct.cmd_list_element* %22, i32 %23)
  %25 = load i32, i32* @gdb_sysroot, align 4
  %26 = call i64 @xstrdup(i32 %25)
  store i64 %26, i64* @solib_absolute_prefix, align 8
  %27 = load i32, i32* @class_support, align 4
  %28 = load i32, i32* @var_string, align 4
  %29 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %27, i32 %28, i8* bitcast (i32* @solib_search_path to i8*), i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.10, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %29, %struct.cmd_list_element** %1, align 8
  %30 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %31 = call i32 @add_show_from_set(%struct.cmd_list_element* %30, i32* @showlist)
  %32 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %33 = load i32, i32* @reload_shared_libraries, align 4
  %34 = call i32 @set_cmd_cfunc(%struct.cmd_list_element* %32, i32 %33)
  %35 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %36 = load i32, i32* @filename_completer, align 4
  %37 = call i32 @set_cmd_completer(%struct.cmd_list_element* %35, i32 %36)
  ret void
}

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local i32 @add_show_from_set(%struct.cmd_list_element*, i32*) #1

declare dso_local %struct.cmd_list_element* @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @set_cmd_cfunc(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @set_cmd_completer(%struct.cmd_list_element*, i32) #1

declare dso_local i64 @xstrdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
