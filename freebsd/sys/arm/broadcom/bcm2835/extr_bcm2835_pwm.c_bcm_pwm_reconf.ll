; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_pwm.c_bcm_pwm_reconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_pwm.c_bcm_pwm_reconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_pwm_softc = type { i32, i32, i64, i64, i64, i64, i64, i32 }

@BCM_PWM_CLKSRC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_pwm_softc*)* @bcm_pwm_reconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_pwm_reconf(%struct.bcm_pwm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_pwm_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bcm_pwm_softc* %0, %struct.bcm_pwm_softc** %3, align 8
  %6 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %7 = call i32 @W_CTL(%struct.bcm_pwm_softc* %6, i64 0)
  %8 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BCM_PWM_CLKSRC, align 4
  %12 = call i64 @bcm2835_clkman_set_frequency(i32 %10, i32 %11, i64 0)
  store i64 0, i64* %5, align 8
  %13 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %19 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %125

23:                                               ; preds = %17, %1
  %24 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %25 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BCM_PWM_CLKSRC, align 4
  %28 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %29 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @bcm2835_clkman_set_frequency(i32 %26, i32 %27, i64 %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %2, align 4
  br label %125

36:                                               ; preds = %23
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %39 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %38, i32 0, i32 6
  store i64 %37, i64* %39, align 8
  %40 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %41 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %80

44:                                               ; preds = %36
  %45 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %46 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %47 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @W_RNG(%struct.bcm_pwm_softc* %45, i64 %48)
  %50 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %51 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %54 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %59 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %62 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %44
  %64 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %65 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %66 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @W_DAT(%struct.bcm_pwm_softc* %64, i64 %67)
  %69 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %70 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i64, i64* %5, align 8
  %75 = or i64 %74, 129
  store i64 %75, i64* %5, align 8
  br label %79

76:                                               ; preds = %63
  %77 = load i64, i64* %5, align 8
  %78 = or i64 %77, 1
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %36
  %81 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %82 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %121

85:                                               ; preds = %80
  %86 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %87 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %88 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @W_RNG2(%struct.bcm_pwm_softc* %86, i64 %89)
  %91 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %92 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %95 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %85
  %99 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %100 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %103 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %102, i32 0, i32 5
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %98, %85
  %105 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %106 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %107 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @W_DAT2(%struct.bcm_pwm_softc* %105, i64 %108)
  %110 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %111 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load i64, i64* %5, align 8
  %116 = or i64 %115, 33024
  store i64 %116, i64* %5, align 8
  br label %120

117:                                              ; preds = %104
  %118 = load i64, i64* %5, align 8
  %119 = or i64 %118, 256
  store i64 %119, i64* %5, align 8
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %80
  %122 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %3, align 8
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @W_CTL(%struct.bcm_pwm_softc* %122, i64 %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %34, %22
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @W_CTL(%struct.bcm_pwm_softc*, i64) #1

declare dso_local i64 @bcm2835_clkman_set_frequency(i32, i32, i64) #1

declare dso_local i32 @W_RNG(%struct.bcm_pwm_softc*, i64) #1

declare dso_local i32 @W_DAT(%struct.bcm_pwm_softc*, i64) #1

declare dso_local i32 @W_RNG2(%struct.bcm_pwm_softc*, i64) #1

declare dso_local i32 @W_DAT2(%struct.bcm_pwm_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
