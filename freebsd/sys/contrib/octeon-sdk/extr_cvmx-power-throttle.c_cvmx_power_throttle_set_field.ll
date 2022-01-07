; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-power-throttle.c_cvmx_power_throttle_set_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-power-throttle.c_cvmx_power_throttle_set_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_power_throttle_rfield_t = type { i32, i32 }

@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@CVMX_PTH_INDEX_MAX = common dso_local global i32 0, align 4
@cvmx_power_throttle_rfield = common dso_local global %struct.cvmx_power_throttle_rfield_t* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @cvmx_power_throttle_set_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_power_throttle_set_field(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cvmx_power_throttle_rfield_t*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @OCTEON_CN6XXX, align 4
  %11 = call i64 @OCTEON_IS_MODEL(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CVMX_PTH_INDEX_MAX, align 4
  %16 = icmp slt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.cvmx_power_throttle_rfield_t*, %struct.cvmx_power_throttle_rfield_t** @cvmx_power_throttle_rfield, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cvmx_power_throttle_rfield_t, %struct.cvmx_power_throttle_rfield_t* %19, i64 %21
  store %struct.cvmx_power_throttle_rfield_t* %22, %struct.cvmx_power_throttle_rfield_t** %9, align 8
  %23 = load %struct.cvmx_power_throttle_rfield_t*, %struct.cvmx_power_throttle_rfield_t** %9, align 8
  %24 = getelementptr inbounds %struct.cvmx_power_throttle_rfield_t, %struct.cvmx_power_throttle_rfield_t* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cvmx_power_throttle_rfield_t*, %struct.cvmx_power_throttle_rfield_t** %9, align 8
  %27 = getelementptr inbounds %struct.cvmx_power_throttle_rfield_t, %struct.cvmx_power_throttle_rfield_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CVMX_PTH_GET_MASK(i32 %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.cvmx_power_throttle_rfield_t*, %struct.cvmx_power_throttle_rfield_t** %9, align 8
  %36 = getelementptr inbounds %struct.cvmx_power_throttle_rfield_t, %struct.cvmx_power_throttle_rfield_t* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %34, %37
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %38, %39
  %41 = or i32 %33, %40
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CVMX_PTH_GET_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
