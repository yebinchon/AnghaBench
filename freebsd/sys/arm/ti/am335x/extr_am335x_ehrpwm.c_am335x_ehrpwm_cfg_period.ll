; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_ehrpwm.c_am335x_ehrpwm_cfg_period.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_ehrpwm.c_am335x_ehrpwm_cfg_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_ehrpwm_softc = type { i32, i32, i32, i32 }

@NS_PER_SEC = common dso_local global i32 0, align 4
@PWM_CLOCK = common dso_local global i32 0, align 4
@EPWM_TBCTL = common dso_local global i32 0, align 4
@TBCTL_CLKDIV_MASK = common dso_local global i32 0, align 4
@TBCTL_HSPCLKDIV_MASK = common dso_local global i32 0, align 4
@EPWM_TBPRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.am335x_ehrpwm_softc*, i32)* @am335x_ehrpwm_cfg_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_ehrpwm_cfg_period(%struct.am335x_ehrpwm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.am335x_ehrpwm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.am335x_ehrpwm_softc* %0, %struct.am335x_ehrpwm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @NS_PER_SEC, align 4
  %16 = mul nsw i32 2, %15
  %17 = load i32, i32* @PWM_CLOCK, align 4
  %18 = sdiv i32 %16, %17
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %22 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %24 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %26 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %137

27:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %66, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %69

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 1, %32
  store i32 %33, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %58, %31
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %38, 2
  %40 = call i32 @max(i32 1, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* @PWM_CLOCK, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sdiv i32 %41, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @NS_PER_SEC, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sdiv i32 %49, %50
  %52 = icmp slt i32 %51, 65536
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %11, align 4
  br label %61

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %34

61:                                               ; preds = %53, %34
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %69

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %28

69:                                               ; preds = %64, %28
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %137

73:                                               ; preds = %69
  %74 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %75 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %93, label %79

79:                                               ; preds = %73
  %80 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %81 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %79
  %86 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %87 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = mul nsw i32 %89, %90
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %93, label %136

93:                                               ; preds = %85, %79, %73
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %96 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %99 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %104 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %106 = call i32 @PWM_LOCK_ASSERT(%struct.am335x_ehrpwm_softc* %105)
  %107 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %108 = load i32, i32* @EPWM_TBCTL, align 4
  %109 = call i32 @EPWM_READ2(%struct.am335x_ehrpwm_softc* %107, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @TBCTL_CLKDIV_MASK, align 4
  %111 = load i32, i32* @TBCTL_HSPCLKDIV_MASK, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @TBCTL_CLKDIV(i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @TBCTL_HSPCLKDIV(i32 %118)
  %120 = or i32 %117, %119
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %6, align 4
  %123 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %124 = load i32, i32* @EPWM_TBCTL, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc* %123, i32 %124, i32 %125)
  %127 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %128 = load i32, i32* @EPWM_TBPRD, align 4
  %129 = load i32, i32* %11, align 4
  %130 = sub nsw i32 %129, 1
  %131 = call i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc* %127, i32 %128, i32 %130)
  %132 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %133 = call i32 @am335x_ehrpwm_cfg_duty(%struct.am335x_ehrpwm_softc* %132, i32 0, i32 0)
  %134 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %135 = call i32 @am335x_ehrpwm_cfg_duty(%struct.am335x_ehrpwm_softc* %134, i32 1, i32 0)
  br label %136

136:                                              ; preds = %93, %85
  store i32 1, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %72, %20
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @PWM_LOCK_ASSERT(%struct.am335x_ehrpwm_softc*) #1

declare dso_local i32 @EPWM_READ2(%struct.am335x_ehrpwm_softc*, i32) #1

declare dso_local i32 @TBCTL_CLKDIV(i32) #1

declare dso_local i32 @TBCTL_HSPCLKDIV(i32) #1

declare dso_local i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc*, i32, i32) #1

declare dso_local i32 @am335x_ehrpwm_cfg_duty(%struct.am335x_ehrpwm_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
