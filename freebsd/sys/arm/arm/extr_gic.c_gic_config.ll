; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_gic_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_gic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_gic_softc = type { i32 }

@GIC_FIRST_SPI = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@GICD_ICFGR_POL_MASK = common dso_local global i32 0, align 4
@GICD_ICFGR_POL_LOW = common dso_local global i32 0, align 4
@INTR_POLARITY_HIGH = common dso_local global i32 0, align 4
@GICD_ICFGR_POL_HIGH = common dso_local global i32 0, align 4
@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@GICD_ICFGR_TRIG_MASK = common dso_local global i32 0, align 4
@GICD_ICFGR_TRIG_LVL = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@GICD_ICFGR_TRIG_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_gic_softc*, i32, i32, i32)* @gic_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gic_config(%struct.arm_gic_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.arm_gic_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.arm_gic_softc* %0, %struct.arm_gic_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @GIC_FIRST_SPI, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %101

15:                                               ; preds = %4
  %16 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %5, align 8
  %17 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %16, i32 0, i32 0
  %18 = call i32 @mtx_lock_spin(i32* %17)
  %19 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @GICD_ICFGR(i32 %20)
  %22 = call i32 @gic_d_read_4(%struct.arm_gic_softc* %19, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = srem i32 %24, 16
  %26 = mul nsw i32 2, %25
  %27 = ashr i32 %23, %26
  %28 = and i32 %27, 3
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %15
  %33 = load i32, i32* @GICD_ICFGR_POL_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @GICD_ICFGR_POL_LOW, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %53

40:                                               ; preds = %15
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* @GICD_ICFGR_POL_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @GICD_ICFGR_POL_HIGH, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %44, %40
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* @GICD_ICFGR_TRIG_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* @GICD_ICFGR_TRIG_LVL, align 4
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %78

65:                                               ; preds = %53
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i32, i32* @GICD_ICFGR_TRIG_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* @GICD_ICFGR_TRIG_EDGE, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %69, %65
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = srem i32 %80, 16
  %82 = mul nsw i32 2, %81
  %83 = shl i32 3, %82
  %84 = xor i32 %83, -1
  %85 = and i32 %79, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %6, align 4
  %89 = srem i32 %88, 16
  %90 = mul nsw i32 2, %89
  %91 = shl i32 %87, %90
  %92 = or i32 %86, %91
  store i32 %92, i32* %9, align 4
  %93 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @GICD_ICFGR(i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @gic_d_write_4(%struct.arm_gic_softc* %93, i32 %95, i32 %96)
  %98 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %5, align 8
  %99 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %98, i32 0, i32 0
  %100 = call i32 @mtx_unlock_spin(i32* %99)
  br label %101

101:                                              ; preds = %78, %14
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @gic_d_read_4(%struct.arm_gic_softc*, i32) #1

declare dso_local i32 @GICD_ICFGR(i32) #1

declare dso_local i32 @gic_d_write_4(%struct.arm_gic_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
