; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ip.c_readip.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ip.c_readip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @readip(%struct.iodesc* %0, i8** %1, i8** %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.iodesc*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.iodesc* %0, %struct.iodesc** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 -1, i64* %13, align 8
  %14 = call i64 (...) @getsecs()
  store i64 %14, i64* %12, align 8
  br label %15

15:                                               ; preds = %37, %5
  %16 = call i64 (...) @getsecs()
  %17 = load i64, i64* %12, align 8
  %18 = sub nsw i64 %16, %17
  %19 = load i64, i64* %10, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  store i64 0, i64* @errno, align 8
  %22 = load %struct.iodesc*, %struct.iodesc** %7, align 8
  %23 = load i8**, i8*** %8, align 8
  %24 = load i8**, i8*** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @readipv4(%struct.iodesc* %22, i8** %23, i8** %24, i64 %25, i32 %26)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i64, i64* %13, align 8
  store i64 %31, i64* %6, align 8
  br label %40

32:                                               ; preds = %21
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EAGAIN, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i64 -1, i64* %6, align 8
  br label %40

37:                                               ; preds = %32
  br label %15

38:                                               ; preds = %15
  %39 = load i64, i64* @ETIMEDOUT, align 8
  store i64 %39, i64* @errno, align 8
  store i64 -1, i64* %6, align 8
  br label %40

40:                                               ; preds = %38, %36, %30
  %41 = load i64, i64* %6, align 8
  ret i64 %41
}

declare dso_local i64 @getsecs(...) #1

declare dso_local i64 @readipv4(%struct.iodesc*, i8**, i8**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
