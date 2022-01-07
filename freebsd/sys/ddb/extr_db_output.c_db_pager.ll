; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_output.c_db_pager.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_output.c_db_pager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"--More--\0D\00", align 1
@db_maxlines = common dso_local global i32 0, align 4
@db_lines_per_page = common dso_local global i32 0, align 4
@db_pager_quit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@db_newlines = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_pager() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @db_capture_enterpager()
  %4 = call i32 @db_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %27, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = call i32 (...) @cngetc()
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  switch i32 %11, label %27 [
    i32 101, label %12
    i32 106, label %12
    i32 10, label %12
    i32 100, label %15
    i32 102, label %20
    i32 32, label %20
    i32 113, label %24
    i32 81, label %24
    i32 120, label %24
    i32 88, label %24
  ]

12:                                               ; preds = %9, %9, %9
  store i32 1, i32* @db_maxlines, align 4
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %9
  %16 = load i32, i32* @db_lines_per_page, align 4
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* @db_maxlines, align 4
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %27

20:                                               ; preds = %9, %9
  %21 = load i32, i32* @db_lines_per_page, align 4
  store i32 %21, i32* @db_maxlines, align 4
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %9, %9, %9, %9
  store i32 0, i32* @db_maxlines, align 4
  store i32 1, i32* @db_pager_quit, align 4
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %9, %24, %20, %15, %12
  br label %5

28:                                               ; preds = %5
  %29 = call i32 @db_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 (...) @db_force_whitespace()
  %31 = call i32 @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* @db_newlines, align 8
  %32 = call i32 (...) @db_capture_exitpager()
  ret void
}

declare dso_local i32 @db_capture_enterpager(...) #1

declare dso_local i32 @db_printf(i8*) #1

declare dso_local i32 @cngetc(...) #1

declare dso_local i32 @db_force_whitespace(...) #1

declare dso_local i32 @db_capture_exitpager(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
