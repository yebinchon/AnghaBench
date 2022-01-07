; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-l2c.c_cvmx_l2c_get_hw_way_partition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-l2c.c_cvmx_l2c_get_hw_way_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CNF7XXX = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_get_hw_way_partition() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @OCTEON_CN6XXX, align 4
  %3 = call i64 @OCTEON_IS_MODEL(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %7 = call i64 @OCTEON_IS_MODEL(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5, %0
  %10 = call i32 @CVMX_L2C_WPAR_IOBX(i32 0)
  %11 = call i32 @cvmx_read_csr(i32 %10)
  %12 = and i32 %11, 65535
  store i32 %12, i32* %1, align 4
  br label %17

13:                                               ; preds = %5
  %14 = load i32, i32* @CVMX_L2C_SPAR4, align 4
  %15 = call i32 @cvmx_read_csr(i32 %14)
  %16 = and i32 %15, 255
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_L2C_WPAR_IOBX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
