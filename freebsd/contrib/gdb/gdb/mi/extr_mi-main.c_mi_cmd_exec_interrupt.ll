; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_exec_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_exec_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@target_executing = common dso_local global i32 0, align 4
@mi_error_message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"mi_cmd_exec_interrupt: Inferior not executing.\00", align 1
@MI_CMD_ERROR = common dso_local global i32 0, align 4
@last_async_command = common dso_local global i8* null, align 8
@raw_stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"^done\00", align 1
@previous_async_command = common dso_local global i8* null, align 8
@uiout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MI_CMD_QUIET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_exec_interrupt(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @target_executing, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %10, i32* %3, align 4
  br label %42

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @interrupt_target_command(i8* %12, i32 %13)
  %15 = load i8*, i8** @last_async_command, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i8*, i8** @last_async_command, align 8
  %19 = load i32, i32* @raw_stdout, align 4
  %20 = call i32 @fputs_unfiltered(i8* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %11
  %22 = load i32, i32* @raw_stdout, align 4
  %23 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i8*, i8** @last_async_command, align 8
  %25 = call i32 @xfree(i8* %24)
  %26 = load i8*, i8** @previous_async_command, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i8*, i8** @previous_async_command, align 8
  %30 = call i8* @xstrdup(i8* %29)
  store i8* %30, i8** @last_async_command, align 8
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i8*, i8** @previous_async_command, align 8
  %33 = call i32 @xfree(i8* %32)
  store i8* null, i8** @previous_async_command, align 8
  %34 = load i32, i32* @uiout, align 4
  %35 = load i32, i32* @raw_stdout, align 4
  %36 = call i32 @mi_out_put(i32 %34, i32 %35)
  %37 = load i32, i32* @uiout, align 4
  %38 = call i32 @mi_out_rewind(i32 %37)
  %39 = load i32, i32* @raw_stdout, align 4
  %40 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @MI_CMD_QUIET, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %8
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @xasprintf(i32*, i8*) #1

declare dso_local i32 @interrupt_target_command(i8*, i32) #1

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @mi_out_put(i32, i32) #1

declare dso_local i32 @mi_out_rewind(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
