; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_button.c_acpi_button_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_button.c_acpi_button_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_button_softc = type { i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"button\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@btn_ids = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"PNP0C0C\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Power Button\00", align 1
@ACPI_POWER_BUTTON = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"ACPI_FPB\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Power Button (fixed)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"PNP0C0E\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Sleep Button\00", align 1
@ACPI_SLEEP_BUTTON = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"ACPI_FSB\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Sleep Button (fixed)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_button_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_button_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_button_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i64 @acpi_disabled(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %72

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @btn_ids, align 4
  %16 = call i32 @ACPI_ID_PROBE(i32 %13, i32 %14, i32 %15, i8** %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %72

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.acpi_button_softc* @device_get_softc(i32 %22)
  store %struct.acpi_button_softc* %23, %struct.acpi_button_softc** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_set_desc(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i8*, i8** @ACPI_POWER_BUTTON, align 8
  %31 = load %struct.acpi_button_softc*, %struct.acpi_button_softc** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_button_softc, %struct.acpi_button_softc* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  br label %70

33:                                               ; preds = %21
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_set_desc(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i8*, i8** @ACPI_POWER_BUTTON, align 8
  %41 = load %struct.acpi_button_softc*, %struct.acpi_button_softc** %4, align 8
  %42 = getelementptr inbounds %struct.acpi_button_softc, %struct.acpi_button_softc* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.acpi_button_softc*, %struct.acpi_button_softc** %4, align 8
  %44 = getelementptr inbounds %struct.acpi_button_softc, %struct.acpi_button_softc* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %69

45:                                               ; preds = %33
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @device_set_desc(i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %52 = load i8*, i8** @ACPI_SLEEP_BUTTON, align 8
  %53 = load %struct.acpi_button_softc*, %struct.acpi_button_softc** %4, align 8
  %54 = getelementptr inbounds %struct.acpi_button_softc, %struct.acpi_button_softc* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %68

55:                                               ; preds = %45
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_set_desc(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %62 = load i8*, i8** @ACPI_SLEEP_BUTTON, align 8
  %63 = load %struct.acpi_button_softc*, %struct.acpi_button_softc** %4, align 8
  %64 = getelementptr inbounds %struct.acpi_button_softc, %struct.acpi_button_softc* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.acpi_button_softc*, %struct.acpi_button_softc** %4, align 8
  %66 = getelementptr inbounds %struct.acpi_button_softc, %struct.acpi_button_softc* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %59, %55
  br label %68

68:                                               ; preds = %67, %49
  br label %69

69:                                               ; preds = %68, %37
  br label %70

70:                                               ; preds = %69, %27
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %19, %9
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @acpi_disabled(i8*) #1

declare dso_local i32 @ACPI_ID_PROBE(i32, i32, i32, i8**) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.acpi_button_softc* @device_get_softc(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
