; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vhpet.c_vhpet_capabilities.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vhpet.c_vhpet_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VHPET_NUM_TIMERS = common dso_local global i32 0, align 4
@HPET_CAP_COUNT_SIZE = common dso_local global i32 0, align 4
@FS_PER_S = common dso_local global i32 0, align 4
@HPET_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vhpet_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhpet_capabilities() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = or i32 %2, -2138701824
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @VHPET_NUM_TIMERS, align 4
  %5 = sub nsw i32 %4, 1
  %6 = shl i32 %5, 8
  %7 = load i32, i32* %1, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = or i32 %9, 1
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @HPET_CAP_COUNT_SIZE, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %1, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @FS_PER_S, align 4
  %17 = load i32, i32* @HPET_FREQ, align 4
  %18 = sdiv i32 %16, %17
  %19 = shl i32 %18, 32
  %20 = load i32, i32* %1, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
