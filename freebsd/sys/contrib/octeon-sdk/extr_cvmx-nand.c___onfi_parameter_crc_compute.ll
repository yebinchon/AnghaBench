; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c___onfi_parameter_crc_compute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c___onfi_parameter_crc_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*)* @__onfi_parameter_crc_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__onfi_parameter_crc_compute(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  store i32 16, i32* %3, align 4
  store i64 20302, i64* %8, align 8
  store i64 65535, i64* %9, align 8
  store i64 32768, i64* %10, align 8
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %50, %1
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %12, 254
  br i1 %13, label %14, label %53

14:                                               ; preds = %11
  %15 = load i64*, i64** %2, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  store i64 128, i64* %5, align 8
  br label %19

19:                                               ; preds = %43, %14
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = and i64 %23, %24
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = shl i64 %26, 1
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %7, align 8
  %35 = xor i64 %34, %33
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %32, %22
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = xor i64 %40, 32773
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %5, align 8
  %45 = lshr i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %19

46:                                               ; preds = %19
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %4, align 8
  br label %11

53:                                               ; preds = %11
  %54 = load i64, i64* %8, align 8
  ret i64 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
