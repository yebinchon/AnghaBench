; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_print_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_print_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_robot = common dso_local global i32 0, align 4
@files_total = common dso_local global i32 0, align 4
@filename = common dso_local global i64 0, align 8
@stdin_filename = common dso_local global i64 0, align 8
@opt_mode = common dso_local global i64 0, align 8
@MODE_LIST = common dso_local global i64 0, align 8
@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@first_filename_printed = common dso_local global i32 0, align 4
@current_filename_printed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s (%u)\0A\00", align 1
@files_pos = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%s (%u/%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_filename() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @opt_robot, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %43, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @files_total, align 4
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @filename, align 8
  %9 = load i64, i64* @stdin_filename, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %43

11:                                               ; preds = %7, %4
  %12 = call i32 (...) @signals_block()
  %13 = load i64, i64* @opt_mode, align 8
  %14 = load i64, i64* @MODE_LIST, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32*, i32** @stdout, align 8
  br label %20

18:                                               ; preds = %11
  %19 = load i32*, i32** @stderr, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32* [ %17, %16 ], [ %19, %18 ]
  store i32* %21, i32** %1, align 8
  %22 = load i32, i32* @first_filename_printed, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @fputc(i8 signext 10, i32* %25)
  br label %27

27:                                               ; preds = %24, %20
  store i32 1, i32* @first_filename_printed, align 4
  store i32 1, i32* @current_filename_printed, align 4
  %28 = load i32, i32* @files_total, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32*, i32** %1, align 8
  %32 = load i64, i64* @filename, align 8
  %33 = load i32, i32* @files_pos, align 4
  %34 = call i32 (i32*, i8*, i64, i32, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %33)
  br label %41

35:                                               ; preds = %27
  %36 = load i32*, i32** %1, align 8
  %37 = load i64, i64* @filename, align 8
  %38 = load i32, i32* @files_pos, align 4
  %39 = load i32, i32* @files_total, align 4
  %40 = call i32 (i32*, i8*, i64, i32, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = call i32 (...) @signals_unblock()
  br label %43

43:                                               ; preds = %41, %7, %0
  ret void
}

declare dso_local i32 @signals_block(...) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i64, i32, ...) #1

declare dso_local i32 @signals_unblock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
