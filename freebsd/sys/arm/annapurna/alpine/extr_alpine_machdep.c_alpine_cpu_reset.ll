; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_machdep.c_alpine_cpu_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_machdep.c_alpine_cpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"Unable to get WDT base, do power down manually...\00", align 1
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@al_devmap_pa = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to map WDT base, do power down manually...\00", align 1
@WDTLOCK = common dso_local global i32 0, align 4
@UNLOCK = common dso_local global i32 0, align 4
@WDTLOAD = common dso_local global i32 0, align 4
@LOAD_MIN = common dso_local global i32 0, align 4
@WDTCONTROL = common dso_local global i32 0, align 4
@INT_ENABLE = common dso_local global i32 0, align 4
@RESET_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @alpine_cpu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alpine_cpu_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 @alpine_get_wdt_base(i64* %3, i64* %4)
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %41

12:                                               ; preds = %1
  %13 = load i32, i32* @fdtbus_bs_tag, align 4
  %14 = load i64, i64* @al_devmap_pa, align 8
  %15 = load i64, i64* %3, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @bus_space_map(i32 %13, i64 %16, i64 %17, i32 0, i32* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %41

23:                                               ; preds = %12
  %24 = load i32, i32* @fdtbus_bs_tag, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @WDTLOCK, align 4
  %27 = load i32, i32* @UNLOCK, align 4
  %28 = call i32 @bus_space_write_4(i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @fdtbus_bs_tag, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @WDTLOAD, align 4
  %32 = load i32, i32* @LOAD_MIN, align 4
  %33 = call i32 @bus_space_write_4(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @fdtbus_bs_tag, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @WDTCONTROL, align 4
  %37 = load i32, i32* @INT_ENABLE, align 4
  %38 = load i32, i32* @RESET_ENABLE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @bus_space_write_4(i32 %34, i32 %35, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %23, %21, %10
  br label %42

42:                                               ; preds = %41, %42
  br label %42
}

declare dso_local i32 @alpine_get_wdt_base(i64*, i64*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bus_space_map(i32, i64, i64, i32, i32*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
