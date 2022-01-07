; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_EcWaitEvent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_EcWaitEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec_softc = type { i64, i32, i64 }

@EcWaitEvent.no_intr = internal global i32 0, align 4
@ec = common dso_local global i32 0, align 4
@AE_NO_HARDWARE_RESPONSE = common dso_local global i32 0, align 4
@cold = common dso_local global i64 0, align 8
@rebooting = common dso_local global i64 0, align 8
@ec_polled_mode = common dso_local global i32 0, align 4
@ec_timeout = common dso_local global i32 0, align 4
@EC_POLL_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ecgpe\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"sleep_end\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"not getting interrupts, switched to polled mode\0A\00", align 1
@KTR_ACPI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"error: ec wait timed out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec_softc*, i32, i64)* @EcWaitEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EcWaitEvent(%struct.acpi_ec_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.acpi_ec_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.acpi_ec_softc* %0, %struct.acpi_ec_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @ec, align 4
  %13 = call i32 @ACPI_SERIAL_ASSERT(i32 %12)
  %14 = load i32, i32* @AE_NO_HARDWARE_RESPONSE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* @cold, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* @rebooting, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @ec_polled_mode, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %20, %17, %3
  %29 = phi i1 [ true, %20 ], [ true, %17 ], [ true, %3 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %28
  %34 = load i32, i32* @ec_timeout, align 4
  %35 = mul nsw i32 %34, 1000
  %36 = load i32, i32* @EC_POLL_DELAY, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %33
  %42 = call i32 @DELAY(i32 10)
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %58, %41
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @EcCheckStatus(%struct.acpi_ec_softc* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @ACPI_SUCCESS(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %61

55:                                               ; preds = %47
  %56 = load i32, i32* @EC_POLL_DELAY, align 4
  %57 = call i32 @DELAY(i32 %56)
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %43

61:                                               ; preds = %54, %43
  br label %123

62:                                               ; preds = %28
  %63 = load i32, i32* @hz, align 4
  %64 = sdiv i32 %63, 1000
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @ec_timeout, align 4
  store i32 %68, i32* %8, align 4
  br label %74

69:                                               ; preds = %62
  store i32 1, i32* %11, align 4
  %70 = load i32, i32* @ec_timeout, align 4
  %71 = load i32, i32* @hz, align 4
  %72 = sdiv i32 1000, %71
  %73 = sdiv i32 %70, %72
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %69, %67
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %111, %74
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %75
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %82 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @tsleep(%struct.acpi_ec_softc* %86, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @EcCheckStatus(%struct.acpi_ec_softc* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i64 @ACPI_SUCCESS(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %89
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %99 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @EcWaitEvent.no_intr, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @EcWaitEvent.no_intr, align 4
  br label %106

105:                                              ; preds = %96
  store i32 0, i32* @EcWaitEvent.no_intr, align 4
  br label %106

106:                                              ; preds = %105, %102
  br label %114

107:                                              ; preds = %89
  %108 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %109 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %6, align 8
  br label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %75

114:                                              ; preds = %106, %75
  %115 = load i32, i32* %7, align 4
  %116 = call i64 @ACPI_FAILURE(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @EcCheckStatus(%struct.acpi_ec_softc* %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %118, %114
  br label %123

123:                                              ; preds = %122, %61
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @EcWaitEvent.no_intr, align 4
  %128 = icmp sgt i32 %127, 10
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %131 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @device_printf(i32 %132, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* @ec_polled_mode, align 4
  br label %134

134:                                              ; preds = %129, %126, %123
  %135 = load i32, i32* %7, align 4
  %136 = call i64 @ACPI_FAILURE(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32, i32* @KTR_ACPI, align 4
  %140 = call i32 @CTR0(i32 %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %134
  %142 = load i32, i32* %7, align 4
  ret i32 %142
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @EcCheckStatus(%struct.acpi_ec_softc*, i8*, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @tsleep(%struct.acpi_ec_softc*, i32, i8*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CTR0(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
