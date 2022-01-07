; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x.c_armada38x_open_bootrom_win.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x.c_armada38x_open_bootrom_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@MV_MBUS_BRIDGE_BASE = common dso_local global i64 0, align 8
@MV_CPU_SUBSYS_REGS_LEN = common dso_local global i32 0, align 4
@MV_BOOTROM_WIN_SIZE = common dso_local global i32 0, align 4
@IO_WIN_SIZE_MASK = common dso_local global i32 0, align 4
@IO_WIN_SIZE_SHIFT = common dso_local global i32 0, align 4
@MBUS_BOOTROM_ATTR = common dso_local global i32 0, align 4
@IO_WIN_ATTR_MASK = common dso_local global i32 0, align 4
@IO_WIN_ATTR_SHIFT = common dso_local global i32 0, align 4
@MBUS_BOOTROM_TGT_ID = common dso_local global i32 0, align 4
@IO_WIN_TGT_MASK = common dso_local global i32 0, align 4
@IO_WIN_TGT_SHIFT = common dso_local global i32 0, align 4
@IO_WIN_SYNC_MASK = common dso_local global i32 0, align 4
@IO_WIN_SYNC_SHIFT = common dso_local global i32 0, align 4
@IO_WIN_ENA_MASK = common dso_local global i32 0, align 4
@IO_WIN_ENA_SHIFT = common dso_local global i32 0, align 4
@IO_WIN_9_CTRL_OFFSET = common dso_local global i32 0, align 4
@IO_WIN_9_BASE_OFFSET = common dso_local global i32 0, align 4
@MV_BOOTROM_MEM_ADDR = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @armada38x_open_bootrom_win() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @fdtbus_bs_tag, align 4
  %6 = load i64, i64* @MV_MBUS_BRIDGE_BASE, align 8
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @MV_CPU_SUBSYS_REGS_LEN, align 4
  %9 = call i32 @bus_space_map(i32 %5, i32 %7, i32 %8, i32 0, i32* %2)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %1, align 4
  br label %66

14:                                               ; preds = %0
  %15 = load i32, i32* @MV_BOOTROM_WIN_SIZE, align 4
  %16 = load i32, i32* @IO_WIN_SIZE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @IO_WIN_SIZE_SHIFT, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @MBUS_BOOTROM_ATTR, align 4
  %21 = load i32, i32* @IO_WIN_ATTR_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @IO_WIN_ATTR_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @MBUS_BOOTROM_TGT_ID, align 4
  %28 = load i32, i32* @IO_WIN_TGT_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @IO_WIN_TGT_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @IO_WIN_SYNC_MASK, align 4
  %35 = and i32 1, %34
  %36 = load i32, i32* @IO_WIN_SYNC_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @IO_WIN_ENA_MASK, align 4
  %41 = and i32 1, %40
  %42 = load i32, i32* @IO_WIN_ENA_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @fdtbus_bs_tag, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @IO_WIN_9_CTRL_OFFSET, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @bus_space_write_4(i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* @fdtbus_bs_tag, align 4
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @IO_WIN_9_BASE_OFFSET, align 4
  %54 = load i32, i32* @MV_BOOTROM_MEM_ADDR, align 4
  %55 = call i32 @bus_space_write_4(i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @fdtbus_bs_tag, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @MV_CPU_SUBSYS_REGS_LEN, align 4
  %59 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %60 = call i32 @bus_space_barrier(i32 %56, i32 %57, i32 0, i32 %58, i32 %59)
  %61 = load i32, i32* @fdtbus_bs_tag, align 4
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @MV_CPU_SUBSYS_REGS_LEN, align 4
  %64 = call i32 @bus_space_unmap(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %1, align 4
  br label %66

66:                                               ; preds = %14, %12
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_barrier(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
