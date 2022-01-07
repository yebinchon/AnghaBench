; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x.c_armada38x_scu_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x.c_armada38x_scu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@MV_SCU_BASE = common dso_local global i64 0, align 8
@MV_SCU_REGS_LEN = common dso_local global i32 0, align 4
@MV_SCU_REG_CTRL = common dso_local global i32 0, align 4
@MV_SCU_ENABLE = common dso_local global i32 0, align 4
@MV_SCU_SL_L2_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @armada38x_scu_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @fdtbus_bs_tag, align 4
  %6 = load i64, i64* @MV_SCU_BASE, align 8
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @MV_SCU_REGS_LEN, align 4
  %9 = call i32 @bus_space_map(i32 %5, i32 %7, i32 %8, i32 0, i32* %2)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %1, align 4
  br label %38

14:                                               ; preds = %0
  %15 = load i32, i32* @fdtbus_bs_tag, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @MV_SCU_REG_CTRL, align 4
  %18 = call i32 @bus_space_read_4(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MV_SCU_ENABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @MV_SCU_SL_L2_ENABLE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @fdtbus_bs_tag, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MV_SCU_ENABLE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @bus_space_write_4(i32 %27, i32 %28, i32 0, i32 %31)
  br label %33

33:                                               ; preds = %23, %14
  %34 = load i32, i32* @fdtbus_bs_tag, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @MV_SCU_REGS_LEN, align 4
  %37 = call i32 @bus_space_unmap(i32 %34, i32 %35, i32 %36)
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %33, %12
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
