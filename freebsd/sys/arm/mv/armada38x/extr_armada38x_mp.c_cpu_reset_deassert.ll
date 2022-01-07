; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x_mp.c_cpu_reset_deassert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x_mp.c_cpu_reset_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@MV_CPU_RESET_BASE = common dso_local global i64 0, align 8
@MV_CPU_RESET_REGS_LEN = common dso_local global i32 0, align 4
@CPU_RESET_ASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpu_reset_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_reset_deassert() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @fdtbus_bs_tag, align 4
  %6 = load i64, i64* @MV_CPU_RESET_BASE, align 8
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @MV_CPU_RESET_REGS_LEN, align 4
  %9 = call i32 @bus_space_map(i32 %5, i32 %7, i32 %8, i32 0, i32* %2)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %1, align 4
  br label %32

14:                                               ; preds = %0
  %15 = load i32, i32* @fdtbus_bs_tag, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @CPU_RESET_OFFSET(i32 1)
  %18 = call i32 @bus_space_read_4(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @CPU_RESET_ASSERT, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @fdtbus_bs_tag, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @CPU_RESET_OFFSET(i32 1)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @bus_space_write_4(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @fdtbus_bs_tag, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @MV_CPU_RESET_REGS_LEN, align 4
  %31 = call i32 @bus_space_unmap(i32 %28, i32 %29, i32 %30)
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %14, %12
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @CPU_RESET_OFFSET(i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
