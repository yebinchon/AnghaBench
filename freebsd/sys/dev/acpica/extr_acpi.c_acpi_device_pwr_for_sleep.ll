; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_device_pwr_for_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_device_pwr_for_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_softc = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"PNP0500\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PNP0501\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PNP0502\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"PNP0510\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"PNP0511\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"_S%dD\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to get %s on %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_device_pwr_for_sleep(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.acpi_softc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [8 x i8], align 1
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32* @acpi_get_handle(i32 %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %9, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %9, align 8
  %21 = call i64 @acpi_MatchHid(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @acpi_MatchHid(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @acpi_MatchHid(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @acpi_MatchHid(i32* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @acpi_MatchHid(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31, %27, %23, %19, %16, %3
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %4, align 4
  br label %70

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = call %struct.acpi_softc* @device_get_softc(i32 %42)
  store %struct.acpi_softc* %43, %struct.acpi_softc** %8, align 8
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %45 = load %struct.acpi_softc*, %struct.acpi_softc** %8, align 8
  %46 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snprintf(i8* %44, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @acpi_GetInteger(i32* %49, i8* %50, i32* %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @ACPI_FAILURE(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %41
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @AE_NOT_FOUND, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @acpi_name(i32* %63)
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @AcpiFormatException(i64 %65)
  %67 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %62, i32 %64, i32 %66)
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %4, align 4
  br label %70

69:                                               ; preds = %56, %41
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %60, %39
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32* @acpi_get_handle(i32) #1

declare dso_local i64 @acpi_MatchHid(i32*, i8*) #1

declare dso_local %struct.acpi_softc* @device_get_softc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @acpi_GetInteger(i32*, i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @acpi_name(i32*) #1

declare dso_local i32 @AcpiFormatException(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
