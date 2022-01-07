; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_baudconv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_baudconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMTICK = common dso_local global i32 0, align 4
@SPEED_TOLERANCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dos_baudconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_baudconv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %46

9:                                                ; preds = %1
  %10 = load i32, i32* @COMTICK, align 4
  %11 = mul nsw i32 %10, 2
  %12 = load i32, i32* %3, align 4
  %13 = sdiv i32 %11, %12
  %14 = add nsw i32 %13, 1
  %15 = sdiv i32 %14, 2
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %46

20:                                               ; preds = %9
  %21 = load i32, i32* @COMTICK, align 4
  %22 = mul nsw i32 1000, %21
  %23 = mul nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %25, %27
  %29 = sdiv i64 %24, %28
  %30 = add nsw i64 %29, 1
  %31 = sdiv i64 %30, 2
  %32 = sub nsw i64 %31, 1000
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i64, i64* %5, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %35, %20
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @SPEED_TOLERANCE, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  br label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %4, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %42, %19, %8
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
