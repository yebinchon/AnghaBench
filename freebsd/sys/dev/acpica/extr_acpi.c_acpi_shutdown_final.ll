; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_shutdown_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_shutdown_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_softc = type { i32, i64, i64 }

@RB_POWEROFF = common dso_local global i32 0, align 4
@ACPI_STATE_S5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"AcpiEnterSleepStatePrep failed - %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Powering system off\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"power-off failed - %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"power-off failed - timeout\0A\00", align 1
@RB_HALT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"reset failed - timeout\0A\00", align 1
@AE_NOT_EXIST = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"reset failed - %s\0A\00", align 1
@panicstr = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"Shutting down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @acpi_shutdown_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_shutdown_final(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.acpi_softc*
  store %struct.acpi_softc* %9, %struct.acpi_softc** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @RB_POWEROFF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %2
  %15 = load i32, i32* @ACPI_STATE_S5, align 4
  %16 = call i64 @AcpiEnterSleepStatePrep(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @ACPI_FAILURE(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.acpi_softc*, %struct.acpi_softc** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @AcpiFormatException(i64 %24)
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %106

27:                                               ; preds = %14
  %28 = load %struct.acpi_softc*, %struct.acpi_softc** %5, align 8
  %29 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (...) @intr_disable()
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @ACPI_STATE_S5, align 4
  %34 = call i64 @AcpiEnterSleepState(i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @ACPI_FAILURE(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @intr_restore(i32 %39)
  %41 = load %struct.acpi_softc*, %struct.acpi_softc** %5, align 8
  %42 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @AcpiFormatException(i64 %44)
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %55

47:                                               ; preds = %27
  %48 = call i32 @DELAY(i32 1000000)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @intr_restore(i32 %49)
  %51 = load %struct.acpi_softc*, %struct.acpi_softc** %5, align 8
  %52 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %47, %38
  br label %106

56:                                               ; preds = %2
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @RB_HALT, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %56
  %62 = load %struct.acpi_softc*, %struct.acpi_softc** %5, align 8
  %63 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = call i64 (...) @AcpiReset()
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @ACPI_SUCCESS(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = call i32 @DELAY(i32 1000000)
  %73 = load %struct.acpi_softc*, %struct.acpi_softc** %5, align 8
  %74 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %89

77:                                               ; preds = %66
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @AE_NOT_EXIST, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.acpi_softc*, %struct.acpi_softc** %5, align 8
  %83 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @AcpiFormatException(i64 %85)
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %81, %77
  br label %89

89:                                               ; preds = %88, %71
  br label %105

90:                                               ; preds = %61, %56
  %91 = load %struct.acpi_softc*, %struct.acpi_softc** %5, align 8
  %92 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i32*, i32** @panicstr, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.acpi_softc*, %struct.acpi_softc** %5, align 8
  %100 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %103 = call i32 (...) @AcpiTerminate()
  br label %104

104:                                              ; preds = %98, %95, %90
  br label %105

105:                                              ; preds = %104, %89
  br label %106

106:                                              ; preds = %20, %105, %55
  ret void
}

declare dso_local i64 @AcpiEnterSleepStatePrep(i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @AcpiFormatException(i64) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i64 @AcpiEnterSleepState(i32) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @AcpiReset(...) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local i32 @AcpiTerminate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
