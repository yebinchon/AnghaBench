; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_clkman.c_bcm2835_clkman_set_frequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_clkman.c_bcm2835_clkman_set_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_clkman_softc = type { i32 }

@BCM_PWM_CLKSRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported unit 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to stop clock for unit 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Frequency too high for unit 0x%x (max: 125 MHz)\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Frequency too low for unit 0x%x (min: 123 kHz)\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to start clock for unit 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm2835_clkman_set_frequency(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcm2835_clkman_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.bcm2835_clkman_softc* @device_get_softc(i32 %11)
  store %struct.bcm2835_clkman_softc* %12, %struct.bcm2835_clkman_softc** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @BCM_PWM_CLKSRC, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %8, align 8
  %18 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %4, align 4
  br label %115

22:                                               ; preds = %3
  %23 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @W_CMCLK(%struct.bcm2835_clkman_softc* %23, i32 %24, i32 6)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %39, %22
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @R_CMCLK(%struct.bcm2835_clkman_softc* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %42

37:                                               ; preds = %29
  %38 = call i32 @DELAY(i32 1000)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %26

42:                                               ; preds = %36, %26
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %8, align 8
  %48 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 0, i32* %4, align 4
  br label %115

52:                                               ; preds = %42
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %115

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = sdiv i32 500000000, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %8, align 8
  %63 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  store i32 0, i32* %4, align 4
  br label %115

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  %69 = icmp sgt i32 %68, 4095
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %8, align 8
  %72 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  store i32 0, i32* %4, align 4
  br label %115

76:                                               ; preds = %67
  %77 = load i32, i32* %10, align 4
  %78 = sdiv i32 500000000, %77
  store i32 %78, i32* %7, align 4
  %79 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %8, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %10, align 4
  %82 = shl i32 %81, 12
  %83 = call i32 @W_CMDIV(%struct.bcm2835_clkman_softc* %79, i32 %80, i32 %82)
  %84 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %8, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @W_CMCLK(%struct.bcm2835_clkman_softc* %84, i32 %85, i32 22)
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %100, %76
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 10
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %8, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @R_CMCLK(%struct.bcm2835_clkman_softc* %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, 128
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %103

98:                                               ; preds = %90
  %99 = call i32 @DELAY(i32 1000)
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %87

103:                                              ; preds = %97, %87
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, 128
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  %108 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %8, align 8
  %109 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  store i32 0, i32* %4, align 4
  br label %115

113:                                              ; preds = %103
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %107, %70, %61, %55, %46, %16
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.bcm2835_clkman_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @W_CMCLK(%struct.bcm2835_clkman_softc*, i32, i32) #1

declare dso_local i32 @R_CMCLK(%struct.bcm2835_clkman_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @W_CMDIV(%struct.bcm2835_clkman_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
