; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-l2c.c_cvmx_l2c_get_core_way_partition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-l2c.c_cvmx_l2c_get_core_way_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CNF7XXX = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR0 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR1 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR2 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_get_core_way_partition(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 (...) @cvmx_octeon_num_cores()
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %61

9:                                                ; preds = %1
  %10 = load i32, i32* @OCTEON_CN6XXX, align 4
  %11 = call i64 @OCTEON_IS_MODEL(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %15 = call i64 @OCTEON_IS_MODEL(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @CVMX_L2C_WPAR_PPX(i32 %18)
  %20 = call i32 @cvmx_read_csr(i32 %19)
  %21 = and i32 %20, 65535
  store i32 %21, i32* %2, align 4
  br label %61

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 3
  %25 = mul nsw i32 %24, 8
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 12
  switch i32 %27, label %60 [
    i32 0, label %28
    i32 4, label %36
    i32 8, label %44
    i32 12, label %52
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @CVMX_L2C_SPAR0, align 4
  %30 = call i32 @cvmx_read_csr(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 255, %31
  %33 = and i32 %30, %32
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %2, align 4
  br label %61

36:                                               ; preds = %22
  %37 = load i32, i32* @CVMX_L2C_SPAR1, align 4
  %38 = call i32 @cvmx_read_csr(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 255, %39
  %41 = and i32 %38, %40
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %2, align 4
  br label %61

44:                                               ; preds = %22
  %45 = load i32, i32* @CVMX_L2C_SPAR2, align 4
  %46 = call i32 @cvmx_read_csr(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 255, %47
  %49 = and i32 %46, %48
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %2, align 4
  br label %61

52:                                               ; preds = %22
  %53 = load i32, i32* @CVMX_L2C_SPAR3, align 4
  %54 = call i32 @cvmx_read_csr(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = shl i32 255, %55
  %57 = and i32 %54, %56
  %58 = load i32, i32* %4, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %52, %44, %36, %28, %17, %8
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @cvmx_octeon_num_cores(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_L2C_WPAR_PPX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
