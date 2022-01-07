; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_EcRead.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_EcRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec_softc = type { i32, i32 }

@ec = common dso_local global i32 0, align 4
@KTR_ACPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ec read from %#x\00", align 1
@EC_COMMAND_READ = common dso_local global i32 0, align 4
@EC_EVENT_OUTPUT_BUFFER_FULL = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"retr_check\00", align 1
@EC_EVENT_INPUT_BUFFER_EMPTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"EcRead: failed waiting to get data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec_softc*, i32, i32*)* @EcRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EcRead(%struct.acpi_ec_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_ec_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.acpi_ec_softc* %0, %struct.acpi_ec_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @ec, align 4
  %12 = call i32 @ACPI_SERIAL_ASSERT(i32 %11)
  %13 = load i32, i32* @KTR_ACPI, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @CTR1(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %55, %3
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %58

19:                                               ; preds = %16
  %20 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %5, align 8
  %21 = load i32, i32* @EC_COMMAND_READ, align 4
  %22 = call i32 @EcCommand(%struct.acpi_ec_softc* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %64

28:                                               ; preds = %19
  %29 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %5, align 8
  %30 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @EC_SET_DATA(%struct.acpi_ec_softc* %32, i32 %33)
  %35 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %5, align 8
  %36 = load i32, i32* @EC_EVENT_OUTPUT_BUFFER_FULL, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @EcWaitEvent(%struct.acpi_ec_softc* %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @ACPI_SUCCESS(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %5, align 8
  %44 = call i32 @EC_GET_DATA(%struct.acpi_ec_softc* %43)
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @AE_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %64

47:                                               ; preds = %28
  %48 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %5, align 8
  %49 = load i32, i32* @EC_EVENT_INPUT_BUFFER_EMPTY, align 4
  %50 = call i32 @EcCheckStatus(%struct.acpi_ec_softc* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = call i64 @ACPI_FAILURE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %58

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %16

58:                                               ; preds = %53, %16
  %59 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %5, align 8
  %60 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %42, %26
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i32 @CTR1(i32, i8*, i32) #1

declare dso_local i32 @EcCommand(%struct.acpi_ec_softc*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @EC_SET_DATA(%struct.acpi_ec_softc*, i32) #1

declare dso_local i32 @EcWaitEvent(%struct.acpi_ec_softc*, i32, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @EC_GET_DATA(%struct.acpi_ec_softc*) #1

declare dso_local i32 @EcCheckStatus(%struct.acpi_ec_softc*, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
