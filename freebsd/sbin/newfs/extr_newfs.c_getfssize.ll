; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs/extr_newfs.c_getfssize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs/extr_newfs.c_getfssize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"%s: reserved not less than device size %jd\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: maximum file system size is %jd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getfssize(i64* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %8, align 8
  %12 = sub nsw i64 %10, %11
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %16, i64 %17)
  br label %19

19:                                               ; preds = %15, %4
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = load i64*, i64** %5, align 8
  store i64 %24, i64* %25, align 8
  br label %36

26:                                               ; preds = %19
  %27 = load i64*, i64** %5, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %32, i64 %33)
  br label %35

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35, %23
  ret void
}

declare dso_local i32 @errx(i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
