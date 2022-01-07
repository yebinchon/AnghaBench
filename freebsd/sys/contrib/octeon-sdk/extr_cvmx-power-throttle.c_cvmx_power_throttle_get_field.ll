; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-power-throttle.c_cvmx_power_throttle_get_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-power-throttle.c_cvmx_power_throttle_get_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_power_throttle_rfield_t = type { i32, i32, i32 }

@CVMX_PTH_INDEX_MAX = common dso_local global i64 0, align 8
@cvmx_power_throttle_rfield = common dso_local global %struct.cvmx_power_throttle_rfield_t* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_power_throttle_get_field(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cvmx_power_throttle_rfield_t*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @CVMX_PTH_INDEX_MAX, align 8
  %10 = icmp ult i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.cvmx_power_throttle_rfield_t*, %struct.cvmx_power_throttle_rfield_t** @cvmx_power_throttle_rfield, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.cvmx_power_throttle_rfield_t, %struct.cvmx_power_throttle_rfield_t* %13, i64 %14
  store %struct.cvmx_power_throttle_rfield_t* %15, %struct.cvmx_power_throttle_rfield_t** %7, align 8
  %16 = load %struct.cvmx_power_throttle_rfield_t*, %struct.cvmx_power_throttle_rfield_t** %7, align 8
  %17 = getelementptr inbounds %struct.cvmx_power_throttle_rfield_t, %struct.cvmx_power_throttle_rfield_t* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.cvmx_power_throttle_rfield_t*, %struct.cvmx_power_throttle_rfield_t** %7, align 8
  %23 = getelementptr inbounds %struct.cvmx_power_throttle_rfield_t, %struct.cvmx_power_throttle_rfield_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cvmx_power_throttle_rfield_t*, %struct.cvmx_power_throttle_rfield_t** %7, align 8
  %26 = getelementptr inbounds %struct.cvmx_power_throttle_rfield_t, %struct.cvmx_power_throttle_rfield_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CVMX_PTH_GET_MASK(i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.cvmx_power_throttle_rfield_t*, %struct.cvmx_power_throttle_rfield_t** %7, align 8
  %33 = getelementptr inbounds %struct.cvmx_power_throttle_rfield_t, %struct.cvmx_power_throttle_rfield_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %31, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %21, %20
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CVMX_PTH_GET_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
