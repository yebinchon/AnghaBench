; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_EcCheckStatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_EcCheckStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec_softc = type { i64 }

@AE_NO_HARDWARE_RESPONSE = common dso_local global i32 0, align 4
@EC_FLAG_BURST_MODE = common dso_local global i32 0, align 4
@KTR_ACPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ec burst disabled in waitevent (%s)\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"ec %s wait ready, status %#x\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec_softc*, i8*, i32)* @EcCheckStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EcCheckStatus(%struct.acpi_ec_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.acpi_ec_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.acpi_ec_softc* %0, %struct.acpi_ec_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @AE_NO_HARDWARE_RESPONSE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %11 = call i32 @EC_GET_CSR(%struct.acpi_ec_softc* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %13 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @EC_FLAG_BURST_MODE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @KTR_ACPI, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @CTR1(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i64, i64* @FALSE, align 8
  %26 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %21, %16, %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @EVENT_READY(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @KTR_ACPI, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @CTR2(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load i32, i32* @AE_OK, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @EC_GET_CSR(%struct.acpi_ec_softc*) #1

declare dso_local i32 @CTR1(i32, i8*, i8*) #1

declare dso_local i64 @EVENT_READY(i32, i32) #1

declare dso_local i32 @CTR2(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
