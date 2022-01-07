; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_init_battery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_init_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cmbat_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"battery initialization start\0A\00", align 1
@ACPI_CMBAT_RETRY_MAX = common dso_local global i32 0, align 4
@cmbat = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"battery initialization failed, giving up\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"battery initialization done, tried %d times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @acpi_cmbat_init_battery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_cmbat_init_battery(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_cmbat_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @acpi_device_get_parent_softc(i64 %10)
  %12 = call i32 (i64, i32, i8*, ...) @ACPI_VPRINT(i64 %9, i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %82, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ACPI_CMBAT_RETRY_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %86

17:                                               ; preds = %13
  %18 = load i32, i32* @cmbat, align 4
  %19 = call i32 @ACPI_SERIAL_BEGIN(i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.acpi_cmbat_softc* @device_get_softc(i64 %20)
  store %struct.acpi_cmbat_softc* %21, %struct.acpi_cmbat_softc** %3, align 8
  %22 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %23 = icmp eq %struct.acpi_cmbat_softc* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @cmbat, align 4
  %26 = call i32 @ACPI_SERIAL_END(i32 %25)
  br label %102

27:                                               ; preds = %17
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @acpi_BatteryIsPresent(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @device_is_attached(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @cmbat, align 4
  %37 = call i32 @ACPI_SERIAL_END(i32 %36)
  br label %82

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %43 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %42, i32 0, i32 1
  %44 = call i64 @acpi_battery_bst_valid(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41, %38
  %47 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %48 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %47, i32 0, i32 2
  %49 = call i32 @timespecclear(i32* %48)
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @acpi_cmbat_get_bst(i64 %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %57 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %56, i32 0, i32 0
  %58 = call i64 @acpi_battery_bif_valid(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55, %52
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @acpi_cmbat_get_bif(i64 %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %65 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %64, i32 0, i32 1
  %66 = call i64 @acpi_battery_bst_valid(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %70 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %69, i32 0, i32 0
  %71 = call i64 @acpi_battery_bif_valid(i32* %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %68, %63
  %74 = phi i1 [ false, %63 ], [ %72, %68 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @cmbat, align 4
  %77 = call i32 @ACPI_SERIAL_END(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %86

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %35
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  %85 = call i32 @AcpiOsSleep(i32 10000)
  br label %13

86:                                               ; preds = %80, %13
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @ACPI_CMBAT_RETRY_MAX, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @acpi_device_get_parent_softc(i64 %92)
  %94 = call i32 (i64, i32, i8*, ...) @ACPI_VPRINT(i64 %91, i32 %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %102

95:                                               ; preds = %86
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @acpi_device_get_parent_softc(i64 %97)
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  %101 = call i32 (i64, i32, i8*, ...) @ACPI_VPRINT(i64 %96, i32 %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %24, %95, %90
  ret void
}

declare dso_local i32 @ACPI_VPRINT(i64, i32, i8*, ...) #1

declare dso_local i32 @acpi_device_get_parent_softc(i64) #1

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local %struct.acpi_cmbat_softc* @device_get_softc(i64) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

declare dso_local i32 @acpi_BatteryIsPresent(i64) #1

declare dso_local i32 @device_is_attached(i64) #1

declare dso_local i64 @acpi_battery_bst_valid(i32*) #1

declare dso_local i32 @timespecclear(i32*) #1

declare dso_local i32 @acpi_cmbat_get_bst(i64) #1

declare dso_local i64 @acpi_battery_bif_valid(i32*) #1

declare dso_local i32 @acpi_cmbat_get_bif(i64) #1

declare dso_local i32 @AcpiOsSleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
