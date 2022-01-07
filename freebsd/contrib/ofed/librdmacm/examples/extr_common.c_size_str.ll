; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_common.c_size_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_common.c_size_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%lld.%lld%c\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @size_str(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp sge i64 %10, 1073741824
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i64 1073741824, i64* %7, align 8
  store i8 103, i8* %9, align 1
  br label %24

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp sge i64 %14, 1048576
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i64 1048576, i64* %7, align 8
  store i8 109, i8* %9, align 1
  br label %23

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = icmp sge i64 %18, 1024
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64 1024, i64* %7, align 8
  store i8 107, i8* %9, align 1
  br label %22

21:                                               ; preds = %17
  store i64 1, i64* %7, align 8
  store i8 0, i8* %9, align 1
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %16
  br label %24

24:                                               ; preds = %23, %12
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sdiv i64 %25, %26
  %28 = icmp slt i64 %27, 10
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = srem i64 %30, %31
  %33 = mul nsw i64 %32, 10
  %34 = load i64, i64* %7, align 8
  %35 = sdiv i64 %33, %34
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = sdiv i64 %42, %43
  %45 = load i64, i64* %8, align 8
  %46 = trunc i64 %45 to i8
  %47 = load i8, i8* %9, align 1
  %48 = sext i8 %47 to i32
  %49 = call i32 (i8*, i64, i8*, i64, i8, ...) @snprintf(i8* %40, i64 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %44, i8 signext %46, i32 %48)
  br label %58

50:                                               ; preds = %36
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = sdiv i64 %53, %54
  %56 = load i8, i8* %9, align 1
  %57 = call i32 (i8*, i64, i8*, i64, i8, ...) @snprintf(i8* %51, i64 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %55, i8 signext %56)
  br label %58

58:                                               ; preds = %50, %39
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i64, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
