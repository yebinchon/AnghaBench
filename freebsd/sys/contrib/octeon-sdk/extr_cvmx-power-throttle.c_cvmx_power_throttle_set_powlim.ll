; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-power-throttle.c_cvmx_power_throttle_set_powlim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-power-throttle.c_cvmx_power_throttle_set_powlim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@CVMX_PTH_INDEX_MAXPOW = common dso_local global i32 0, align 4
@OCTEON_CN63XX = common dso_local global i32 0, align 4
@CVMX_PTH_INDEX_HRMPOWADJ = common dso_local global i32 0, align 4
@CVMX_PTH_INDEX_POWLIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @cvmx_power_throttle_set_powlim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cvmx_power_throttle_set_powlim(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @OCTEON_CN6XXX, align 4
  %11 = call i64 @OCTEON_IS_MODEL(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 101
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @cvmx_power_throttle_csr_addr(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @cvmx_read_csr(i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* @CVMX_PTH_INDEX_MAXPOW, align 4
  %24 = call i64 @cvmx_power_throttle_get_field(i64 %22, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @OCTEON_CN63XX, align 4
  %26 = call i64 @OCTEON_IS_MODEL(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %13
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* @CVMX_PTH_INDEX_HRMPOWADJ, align 4
  %31 = call i64 @cvmx_power_throttle_get_field(i64 %29, i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp sgt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %28, %13
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %6, align 8
  %44 = mul nsw i64 %42, %43
  %45 = sdiv i64 %44, 100
  store i64 %45, i64* %6, align 8
  %46 = load i32, i32* @CVMX_PTH_INDEX_POWLIM, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @cvmx_power_throttle_set_field(i32 %46, i64 %47, i64 %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @cvmx_write_csr(i64 %50, i64 %51)
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %3, align 8
  br label %55

54:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @cvmx_power_throttle_csr_addr(i32) #1

declare dso_local i64 @cvmx_read_csr(i64) #1

declare dso_local i64 @cvmx_power_throttle_get_field(i64, i32) #1

declare dso_local i64 @cvmx_power_throttle_set_field(i32, i64, i64) #1

declare dso_local i32 @cvmx_write_csr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
