; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc.c_mandoc_strntoi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc.c_mandoc_strntoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mandoc_strntoi(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = icmp ugt i64 %11, 31
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %51

14:                                               ; preds = %3
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @memcpy(i8* %15, i8* %16, i64 %17)
  %19 = load i64, i64* %6, align 8
  %20 = trunc i64 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %21
  store i8 0, i8* %22, align 1
  store i64 0, i64* @errno, align 8
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @strtol(i8* %23, i8** %9, i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %27 = load i8, i8* %26, align 16
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %14
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %14
  store i32 -1, i32* %4, align 4
  br label %51

36:                                               ; preds = %30
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @INT_MAX, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* @INT_MAX, align 8
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @INT_MIN, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @INT_MIN, align 8
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i64, i64* %10, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %35, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
