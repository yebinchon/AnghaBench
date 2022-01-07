; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c__initialize_wince.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c__initialize_wince.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"remotedirectory\00", align 1
@no_class = common dso_local global i32 0, align 4
@var_string_noescape = common dso_local global i32 0, align 4
@remote_directory = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Set directory for remote upload.\0A\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"remoteupload\00", align 1
@remote_upload = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Set how to upload executables to remote device.\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"debugexec\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_boolean = common dso_local global i32 0, align 4
@debug_exec = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Set whether to display execution in child process.\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"remoteaddhost\00", align 1
@remote_add_host = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [84 x i8] c"Set whether to add this host to remote stub arguments for\0Adebugging over a network.\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"debugevents\00", align 1
@debug_events = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"Set whether to display kernel events in child process.\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"debugmemory\00", align 1
@debug_memory = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [57 x i8] c"Set whether to display memory accesses in child process.\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"debugexceptions\00", align 1
@debug_exceptions = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [59 x i8] c"Set whether to display kernel exceptions in child process.\00", align 1
@child_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_wince() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = call i32 (...) @init_child_ops()
  %3 = load i32, i32* @no_class, align 4
  %4 = load i32, i32* @var_string_noescape, align 4
  %5 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4, i8* bitcast (i64* @remote_directory to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  %6 = call i32 @add_show_from_set(%struct.cmd_list_element* %5, i32* @showlist)
  %7 = load i64, i64* @remote_directory, align 8
  %8 = call i64 @xstrdup(i64 %7)
  store i64 %8, i64* @remote_directory, align 8
  %9 = load i32, i32* @no_class, align 4
  %10 = load i32, i32* @var_string_noescape, align 4
  %11 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %9, i32 %10, i8* bitcast (i32* @remote_upload to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %11, %struct.cmd_list_element** %1, align 8
  %12 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %13 = call i32 @add_show_from_set(%struct.cmd_list_element* %12, i32* @showlist)
  %14 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %15 = call i32 @set_cmd_cfunc(%struct.cmd_list_element* %14, i32 (i32*, i32)* @set_upload_type)
  %16 = call i32 @set_upload_type(i32* null, i32 0)
  %17 = load i32, i32* @class_support, align 4
  %18 = load i32, i32* @var_boolean, align 4
  %19 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %17, i32 %18, i8* bitcast (i32* @debug_exec to i8*), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32* @setlist)
  %20 = call i32 @add_show_from_set(%struct.cmd_list_element* %19, i32* @showlist)
  %21 = load i32, i32* @class_support, align 4
  %22 = load i32, i32* @var_boolean, align 4
  %23 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %21, i32 %22, i8* bitcast (i32* @remote_add_host to i8*), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.7, i64 0, i64 0), i32* @setlist)
  %24 = call i32 @add_show_from_set(%struct.cmd_list_element* %23, i32* @showlist)
  %25 = load i32, i32* @class_support, align 4
  %26 = load i32, i32* @var_boolean, align 4
  %27 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %25, i32 %26, i8* bitcast (i32* @debug_events to i8*), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32* @setlist)
  %28 = call i32 @add_show_from_set(%struct.cmd_list_element* %27, i32* @showlist)
  %29 = load i32, i32* @class_support, align 4
  %30 = load i32, i32* @var_boolean, align 4
  %31 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %29, i32 %30, i8* bitcast (i32* @debug_memory to i8*), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i32* @setlist)
  %32 = call i32 @add_show_from_set(%struct.cmd_list_element* %31, i32* @showlist)
  %33 = load i32, i32* @class_support, align 4
  %34 = load i32, i32* @var_boolean, align 4
  %35 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %33, i32 %34, i8* bitcast (i32* @debug_exceptions to i8*), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i32* @setlist)
  %36 = call i32 @add_show_from_set(%struct.cmd_list_element* %35, i32* @showlist)
  %37 = call i32 @add_target(i32* @child_ops)
  ret void
}

declare dso_local i32 @init_child_ops(...) #1

declare dso_local i32 @add_show_from_set(%struct.cmd_list_element*, i32*) #1

declare dso_local %struct.cmd_list_element* @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i64 @xstrdup(i64) #1

declare dso_local i32 @set_cmd_cfunc(%struct.cmd_list_element*, i32 (i32*, i32)*) #1

declare dso_local i32 @set_upload_type(i32*, i32) #1

declare dso_local i32 @add_target(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
