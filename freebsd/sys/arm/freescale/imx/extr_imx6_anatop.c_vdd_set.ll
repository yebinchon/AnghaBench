; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_vdd_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_vdd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_anatop_softc = type { i32 }

@vdd_set.init_done = internal global i32 0, align 4
@IMX6_ANALOG_PMU_REG_CORE = common dso_local global i32 0, align 4
@IMX6_ANALOG_PMU_REG0_TARG_MASK = common dso_local global i32 0, align 4
@IMX6_ANALOG_PMU_REG1_TARG_MASK = common dso_local global i32 0, align 4
@IMX6_ANALOG_PMU_REG2_TARG_MASK = common dso_local global i32 0, align 4
@IMX6_ANALOG_PMU_REG0_TARG_SHIFT = common dso_local global i32 0, align 4
@IMX6_ANALOG_PMU_REG1_TARG_SHIFT = common dso_local global i32 0, align 4
@IMX6_ANALOG_PMU_REG2_TARG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx6_anatop_softc*, i32)* @vdd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdd_set(%struct.imx6_anatop_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.imx6_anatop_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.imx6_anatop_softc* %0, %struct.imx6_anatop_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @IMX6_ANALOG_PMU_REG_CORE, align 4
  %11 = call i32 @imx6_anatop_read_4(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @IMX6_ANALOG_PMU_REG0_TARG_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 725
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 1450
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 31, i32* %5, align 4
  br label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 700
  %25 = sdiv i32 %24, 25
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %21
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 18
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 18, %30 ], [ %32, %31 ]
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @vdd_set.init_done, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %89

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %47, %48
  %50 = mul nsw i32 %49, 6
  store i32 %50, i32* %8, align 4
  br label %52

51:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %46
  br label %53

53:                                               ; preds = %52
  br label %55

54:                                               ; preds = %33
  store i32 168, i32* %8, align 4
  store i32 1, i32* @vdd_set.init_done, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* @IMX6_ANALOG_PMU_REG0_TARG_MASK, align 4
  %57 = load i32, i32* @IMX6_ANALOG_PMU_REG1_TARG_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @IMX6_ANALOG_PMU_REG2_TARG_MASK, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @IMX6_ANALOG_PMU_REG0_TARG_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @IMX6_ANALOG_PMU_REG1_TARG_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @IMX6_ANALOG_PMU_REG2_TARG_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @IMX6_ANALOG_PMU_REG_CORE, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @imx6_anatop_write_4(i32 %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @DELAY(i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = mul nsw i32 %84, 25
  %86 = add nsw i32 %85, 700
  %87 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %88 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %55, %41
  ret void
}

declare dso_local i32 @imx6_anatop_read_4(i32) #1

declare dso_local i32 @imx6_anatop_write_4(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
