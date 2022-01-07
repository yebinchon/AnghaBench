; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-break.c_mi_cmd_break_watch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-break.c_mi_cmd_break_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mi_opt = type { i8*, i32, i32 }

@mi_cmd_break_watch.opts = internal global [3 x %struct.mi_opt] [%struct.mi_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0 }, %struct.mi_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 0 }, %struct.mi_opt zeroinitializer], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"mi_cmd_break_watch\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"mi_cmd_break_watch: Missing <expression>\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"mi_cmd_break_watch: Garbage following <expression>\00", align 1
@FROM_TTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"mi_cmd_break_watch: Unknown watchpoint type.\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_break_watch(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i32 128, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %3, %23
  %13 = load i32, i32* %6, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @mi_getopt(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %13, i8** %14, %struct.mi_opt* getelementptr inbounds ([3 x %struct.mi_opt], [3 x %struct.mi_opt]* @mi_cmd_break_watch.opts, i64 0, i64 0), i32* %9, i8** %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %24

19:                                               ; preds = %12
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %23 [
    i32 0, label %21
    i32 1, label %22
  ]

21:                                               ; preds = %19
  store i32 129, i32* %8, align 4
  br label %23

22:                                               ; preds = %19
  store i32 130, i32* %8, align 4
  br label %23

23:                                               ; preds = %19, %22, %21
  br label %12

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %56 [
    i32 128, label %44
    i32 129, label %48
    i32 130, label %52
  ]

44:                                               ; preds = %37
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @FROM_TTY, align 4
  %47 = call i32 @watch_command_wrapper(i8* %45, i32 %46)
  br label %58

48:                                               ; preds = %37
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @FROM_TTY, align 4
  %51 = call i32 @rwatch_command_wrapper(i8* %49, i32 %50)
  br label %58

52:                                               ; preds = %37
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* @FROM_TTY, align 4
  %55 = call i32 @awatch_command_wrapper(i8* %53, i32 %54)
  br label %58

56:                                               ; preds = %37
  %57 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52, %48, %44
  %59 = load i32, i32* @MI_CMD_DONE, align 4
  ret i32 %59
}

declare dso_local i32 @mi_getopt(i8*, i32, i8**, %struct.mi_opt*, i32*, i8**) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @watch_command_wrapper(i8*, i32) #1

declare dso_local i32 @rwatch_command_wrapper(i8*, i32) #1

declare dso_local i32 @awatch_command_wrapper(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
