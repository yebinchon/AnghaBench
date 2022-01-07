; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_machdep.c_tegra124_cpu_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_machdep.c_tegra124_cpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Resetting...\0A\00", align 1
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@PMC_PHYSBASE = common dso_local global i32 0, align 4
@PMC_SIZE = common dso_local global i32 0, align 4
@PMC_SCRATCH0 = common dso_local global i32 0, align 4
@PMC_SCRATCH0_MODE_MASK = common dso_local global i32 0, align 4
@PMC_SCRATCH0_MODE_BOOTLOADER = common dso_local global i32 0, align 4
@PMC_CONTROL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tegra124_cpu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra124_cpu_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @fdtbus_bs_tag, align 4
  %7 = load i32, i32* @PMC_PHYSBASE, align 4
  %8 = load i32, i32* @PMC_SIZE, align 4
  %9 = call i32 @bus_space_map(i32 %6, i32 %7, i32 %8, i32 0, i32* %3)
  %10 = load i32, i32* @fdtbus_bs_tag, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PMC_SCRATCH0, align 4
  %13 = call i32 @bus_space_read_4(i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @PMC_SCRATCH0_MODE_MASK, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @fdtbus_bs_tag, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @PMC_SCRATCH0, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PMC_SCRATCH0_MODE_BOOTLOADER, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @bus_space_write_4(i32 %17, i32 %18, i32 %19, i32 %22)
  %24 = load i32, i32* @fdtbus_bs_tag, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @PMC_SCRATCH0, align 4
  %27 = call i32 @bus_space_read_4(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @fdtbus_bs_tag, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @PMC_CONTROL_REG, align 4
  %31 = call i32 @bus_space_read_4(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = call i32 (...) @spinlock_enter()
  %33 = call i32 (...) @dsb()
  %34 = load i32, i32* @fdtbus_bs_tag, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @PMC_CONTROL_REG, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, 16
  %39 = call i32 @bus_space_write_4(i32 %34, i32 %35, i32 %36, i32 %38)
  %40 = load i32, i32* @fdtbus_bs_tag, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @PMC_CONTROL_REG, align 4
  %43 = call i32 @bus_space_read_4(i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %1, %44
  br label %44
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @spinlock_enter(...) #1

declare dso_local i32 @dsb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
