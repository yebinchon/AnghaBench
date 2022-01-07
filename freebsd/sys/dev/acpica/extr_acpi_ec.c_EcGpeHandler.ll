; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_EcGpeHandler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_EcGpeHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec_softc = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"EcGpeHandler called with NULL\00", align 1
@KTR_ACPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ec gpe handler start\00", align 1
@EC_EVENT_SCI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"ec gpe queueing query handler\00", align 1
@OSL_GPE_HANDLER = common dso_local global i32 0, align 4
@EcGpeQueryHandler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"EcGpeHandler: queuing GPE query handler failed\0A\00", align 1
@ACPI_REENABLE_GPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @EcGpeHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EcGpeHandler(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_ec_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.acpi_ec_softc*
  store %struct.acpi_ec_softc* %11, %struct.acpi_ec_softc** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @KTR_ACPI, align 4
  %17 = call i32 @CTR0(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %7, align 8
  %19 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %18, i32 0, i32 1
  %20 = call i32 @atomic_add_int(i32* %19, i32 1)
  %21 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %7, align 8
  %22 = call i32 @wakeup(%struct.acpi_ec_softc* %21)
  %23 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %7, align 8
  %24 = call i32 @EC_GET_CSR(%struct.acpi_ec_softc* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @EC_EVENT_SCI, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %3
  %30 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %7, align 8
  %31 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %30, i32 0, i32 0
  %32 = call i64 @atomic_fetchadd_int(i32* %31, i32 1)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load i32, i32* @KTR_ACPI, align 4
  %36 = call i32 @CTR0(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @OSL_GPE_HANDLER, align 4
  %38 = load i32, i32* @EcGpeQueryHandler, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @AcpiOsExecute(i32 %37, i32 %38, i8* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @ACPI_FAILURE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %7, align 8
  %47 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %46, i32 0, i32 0
  %48 = call i32 @atomic_store_rel_int(i32* %47, i32 0)
  br label %49

49:                                               ; preds = %44, %34
  br label %50

50:                                               ; preds = %49, %29, %3
  %51 = load i32, i32* @ACPI_REENABLE_GPE, align 4
  ret i32 %51
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CTR0(i32, i8*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @wakeup(%struct.acpi_ec_softc*) #1

declare dso_local i32 @EC_GET_CSR(%struct.acpi_ec_softc*) #1

declare dso_local i64 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @AcpiOsExecute(i32, i32, i8*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
