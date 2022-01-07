; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_EcCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_EcCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec_softc = type { i32, i32 }

@ec = common dso_local global i32 0, align 4
@ec_burst_mode = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@EC_EVENT_INPUT_BUFFER_EMPTY = common dso_local global i32 0, align 4
@EC_EVENT_OUTPUT_BUFFER_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"EcCommand: invalid command %#x\0A\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@KTR_ACPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ec running command %#x\00", align 1
@EC_FLAG_BURST_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"EcCommand: no response to %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec_softc*, i32)* @EcCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EcCommand(%struct.acpi_ec_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_ec_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.acpi_ec_softc* %0, %struct.acpi_ec_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @ec, align 4
  %11 = call i32 @ACPI_SERIAL_ASSERT(i32 %10)
  %12 = load i32, i32* @ec_burst_mode, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 131
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @AE_ERROR, align 4
  store i32 %18, i32* %3, align 4
  br label %80

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %25 [
    i32 129, label %21
    i32 128, label %21
    i32 132, label %21
    i32 130, label %23
    i32 131, label %23
  ]

21:                                               ; preds = %19, %19, %19
  %22 = load i32, i32* @EC_EVENT_INPUT_BUFFER_EMPTY, align 4
  store i32 %22, i32* %7, align 4
  br label %32

23:                                               ; preds = %19, %19
  %24 = load i32, i32* @EC_EVENT_OUTPUT_BUFFER_FULL, align 4
  store i32 %24, i32* %7, align 4
  br label %32

25:                                               ; preds = %19
  %26 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %31, i32* %3, align 4
  br label %80

32:                                               ; preds = %23, %21
  %33 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %34 = load i32, i32* @EC_EVENT_INPUT_BUFFER_EMPTY, align 4
  %35 = call i32 @EcWaitEvent(%struct.acpi_ec_softc* %33, i32 %34, i32 0)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @ACPI_FAILURE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %80

41:                                               ; preds = %32
  %42 = load i32, i32* @KTR_ACPI, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @CTR1(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %46 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @EC_SET_CSR(%struct.acpi_ec_softc* %48, i32 %49)
  %51 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @EcWaitEvent(%struct.acpi_ec_softc* %51, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @ACPI_SUCCESS(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %41
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 131
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %63 = call i32 @EC_GET_CSR(%struct.acpi_ec_softc* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @EC_FLAG_BURST_MODE, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @AE_ERROR, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %61
  br label %71

71:                                               ; preds = %70, %58
  br label %78

72:                                               ; preds = %41
  %73 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %74 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %71
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %39, %25, %17
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @EcWaitEvent(%struct.acpi_ec_softc*, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @CTR1(i32, i8*, i32) #1

declare dso_local i32 @EC_SET_CSR(%struct.acpi_ec_softc*, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @EC_GET_CSR(%struct.acpi_ec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
