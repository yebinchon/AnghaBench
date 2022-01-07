; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_target_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_target_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"target %s\00", align 1
@xfree = common dso_local global i32 0, align 4
@last_async_command = common dso_local global i8* null, align 8
@raw_stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"^connected\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ALL_CLEANUPS = common dso_local global i32 0, align 4
@MI_CMD_QUIET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_target_select(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.cleanup* null, %struct.cleanup** %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @xasprintf(i8** %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* @xfree, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.cleanup* @make_cleanup(i32 %9, i8* %10)
  store %struct.cleanup* %11, %struct.cleanup** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @execute_command(i8* %12, i32 %13)
  %15 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %16 = call i32 @do_cleanups(%struct.cleanup* %15)
  %17 = load i8*, i8** @last_async_command, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i8*, i8** @last_async_command, align 8
  %21 = load i32, i32* @raw_stdout, align 4
  %22 = call i32 @fputs_unfiltered(i8* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* @raw_stdout, align 4
  %25 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @uiout, align 4
  %27 = load i32, i32* @raw_stdout, align 4
  %28 = call i32 @mi_out_put(i32 %26, i32 %27)
  %29 = load i32, i32* @uiout, align 4
  %30 = call i32 @mi_out_rewind(i32 %29)
  %31 = load i32, i32* @raw_stdout, align 4
  %32 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ALL_CLEANUPS, align 4
  %34 = call i32 @do_exec_cleanups(i32 %33)
  %35 = load i32, i32* @MI_CMD_QUIET, align 4
  ret i32 %35
}

declare dso_local i32 @xasprintf(i8**, i8*, i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @execute_command(i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local i32 @mi_out_put(i32, i32) #1

declare dso_local i32 @mi_out_rewind(i32) #1

declare dso_local i32 @do_exec_cleanups(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
