; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_is_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_is_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Symlink should exist: %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't read symlink %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*)* @is_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_symlink(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [300 x i8], align 16
  %11 = alloca %struct.stat, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @assertion_count(i8* %14, i32 %15)
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @lstat(i8* %17, %struct.stat* %11)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @failure_start(i8* %22, i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %5, align 4
  br label %58

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @S_ISLNK(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %58

33:                                               ; preds = %27
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %58

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds [300 x i8], [300 x i8]* %10, i64 0, i64 0
  %40 = call i64 @readlink(i8* %38, i8* %39, i32 300)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp ult i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @failure_start(i8* %44, i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %5, align 4
  br label %58

49:                                               ; preds = %37
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds [300 x i8], [300 x i8]* %10, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [300 x i8], [300 x i8]* %10, i64 0, i64 0
  %53 = load i8*, i8** %9, align 8
  %54 = call i64 @strcmp(i8* %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %58

57:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %56, %43, %36, %32, %21
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*) #1

declare dso_local i32 @failure_finish(i32*) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @readlink(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
