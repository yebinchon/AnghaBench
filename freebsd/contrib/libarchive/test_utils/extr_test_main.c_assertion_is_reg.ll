; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_is_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_is_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"File should exist: %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"File %s has wrong mode\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"  Expected: 0%3o\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"  Found: 0%3o\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_is_reg(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @assertion_count(i8* %12, i32 %13)
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @lstat(i8* %15, %struct.stat* %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S_ISREG(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19, %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @failure_start(i8* %25, i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %5, align 4
  br label %52

30:                                               ; preds = %19
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 4095
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @failure_start(i8* %40, i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @logprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 4095
  %49 = call i32 @logprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %5, align 4
  br label %52

51:                                               ; preds = %33, %30
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %39, %24
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*) #1

declare dso_local i32 @failure_finish(i32*) #1

declare dso_local i32 @logprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
