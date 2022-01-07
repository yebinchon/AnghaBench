; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_is_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_is_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Dir should exist: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s is not a dir\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Dir %s has wrong mode\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"  Expected: 0%3o\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"  Found: 0%3o\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_is_dir(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
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
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @failure_start(i8* %20, i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %5, align 4
  br label %58

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @S_ISDIR(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @failure_start(i8* %31, i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %5, align 4
  br label %58

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 4095
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @failure_start(i8* %46, i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @logprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 4095
  %55 = call i32 @logprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %5, align 4
  br label %58

57:                                               ; preds = %39, %36
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %45, %30, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*) #1

declare dso_local i32 @failure_finish(i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @logprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
