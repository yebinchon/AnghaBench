; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-power-throttle.c_cvmx_power_throttle_csr_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-power-throttle.c_cvmx_power_throttle_csr_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@CVMX_MAX_CORES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cvmx_power_throttle_csr_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_power_throttle_csr_addr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @OCTEON_CN6XXX, align 4
  %9 = call i64 @OCTEON_IS_MODEL(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @CVMX_MAX_CORES, align 4
  %14 = icmp slt i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  store i32 11, i32* %6, align 4
  store i32 6, i32* %7, align 4
  %17 = load i32, i32* %3, align 4
  %18 = shl i32 %17, 8
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, 3
  %21 = add nsw i32 %18, %20
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = call i32 @CVMX_L2C_COP0_MAPX(i32 0)
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 3
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CVMX_L2C_COP0_MAPX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
