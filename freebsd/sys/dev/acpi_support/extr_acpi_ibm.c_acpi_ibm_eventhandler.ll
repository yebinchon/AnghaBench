; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_ibm.c_acpi_ibm_eventhandler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_ibm.c_acpi_ibm_eventhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ibm_softc = type { i32, i32, i32 }

@ibm = common dso_local global i32 0, align 4
@POWER_SLEEP_STATE_SUSPEND = common dso_local global i32 0, align 4
@IBM_EC_BRIGHTNESS = common dso_local global i32 0, align 4
@IBM_EC_MASK_BRI = common dso_local global i32 0, align 4
@IBM_EC_VOLUME = common dso_local global i32 0, align 4
@IBM_EC_MASK_VOL = common dso_local global i32 0, align 4
@IBM_EC_MASK_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ibm_softc*, i32)* @acpi_ibm_eventhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ibm_eventhandler(%struct.acpi_ibm_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_ibm_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_ibm_softc* %0, %struct.acpi_ibm_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @ibm, align 4
  %9 = call i32 @ACPI_SERIAL_BEGIN(i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %106 [
    i32 131, label %11
    i32 135, label %14
    i32 133, label %22
    i32 134, label %22
    i32 130, label %49
    i32 128, label %57
    i32 129, label %57
    i32 132, label %84
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @POWER_SLEEP_STATE_SUSPEND, align 4
  %13 = call i32 @power_pm_suspend(i32 %12)
  br label %107

14:                                               ; preds = %2
  %15 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %3, align 8
  %16 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @acpi_ibm_bluetooth_set(%struct.acpi_ibm_softc* %15, i32 %20)
  br label %107

22:                                               ; preds = %2, %2
  %23 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IBM_EC_BRIGHTNESS, align 4
  %27 = call i32 @ACPI_EC_READ(i32 %25, i32 %26, i32* %6, i32 1)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ACPI_FAILURE(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %110

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @IBM_EC_MASK_BRI, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 133
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  br label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %42, 1
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ %40, %38 ], [ %43, %41 ]
  store i32 %45, i32* %5, align 4
  %46 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @acpi_ibm_brightness_set(%struct.acpi_ibm_softc* %46, i32 %47)
  br label %107

49:                                               ; preds = %2
  %50 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %3, align 8
  %51 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @acpi_ibm_thinklight_set(%struct.acpi_ibm_softc* %50, i32 %55)
  br label %107

57:                                               ; preds = %2, %2
  %58 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %3, align 8
  %59 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IBM_EC_VOLUME, align 4
  %62 = call i32 @ACPI_EC_READ(i32 %60, i32 %61, i32* %6, i32 1)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ACPI_FAILURE(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %110

67:                                               ; preds = %57
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @IBM_EC_MASK_VOL, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 128
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  br label %79

76:                                               ; preds = %67
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 %77, 1
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i32 [ %75, %73 ], [ %78, %76 ]
  store i32 %80, i32* %5, align 4
  %81 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @acpi_ibm_volume_set(%struct.acpi_ibm_softc* %81, i32 %82)
  br label %107

84:                                               ; preds = %2
  %85 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %3, align 8
  %86 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IBM_EC_VOLUME, align 4
  %89 = call i32 @ACPI_EC_READ(i32 %87, i32 %88, i32* %6, i32 1)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @ACPI_FAILURE(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %110

94:                                               ; preds = %84
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @IBM_EC_MASK_MUTE, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @IBM_EC_MASK_MUTE, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %5, align 4
  %101 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @acpi_ibm_mute_set(%struct.acpi_ibm_softc* %101, i32 %104)
  br label %107

106:                                              ; preds = %2
  br label %107

107:                                              ; preds = %106, %94, %79, %49, %44, %14, %11
  %108 = load i32, i32* @ibm, align 4
  %109 = call i32 @ACPI_SERIAL_END(i32 %108)
  br label %110

110:                                              ; preds = %107, %93, %66, %31
  ret void
}

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local i32 @power_pm_suspend(i32) #1

declare dso_local i32 @acpi_ibm_bluetooth_set(%struct.acpi_ibm_softc*, i32) #1

declare dso_local i32 @ACPI_EC_READ(i32, i32, i32*, i32) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ibm_brightness_set(%struct.acpi_ibm_softc*, i32) #1

declare dso_local i32 @acpi_ibm_thinklight_set(%struct.acpi_ibm_softc*, i32) #1

declare dso_local i32 @acpi_ibm_volume_set(%struct.acpi_ibm_softc*, i32) #1

declare dso_local i32 @acpi_ibm_mute_set(%struct.acpi_ibm_softc*, i32) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
