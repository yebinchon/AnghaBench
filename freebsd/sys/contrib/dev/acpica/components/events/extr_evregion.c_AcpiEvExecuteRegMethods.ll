; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/events/extr_evregion.c_AcpiEvExecuteRegMethods.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/events/extr_evregion.c_AcpiEvExecuteRegMethods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@EvExecuteRegMethods = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_SYSTEM_IO = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_DATA_TABLE = common dso_local global i64 0, align 8
@return_VOID = common dso_local global i32 0, align 4
@ACPI_DB_NAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"    Running _REG methods for SpaceId %s\0A\00", align 1
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_NS_WALK_UNLOCK = common dso_local global i32 0, align 4
@AcpiEvRegRun = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_EC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"    Executed %u _REG methods for SpaceId %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiEvExecuteRegMethods(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @EvExecuteRegMethods, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_IO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @ACPI_ADR_SPACE_DATA_TABLE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13, %3
  %22 = load i32, i32* @return_VOID, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @ACPI_DB_NAMES, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @AcpiUtGetRegionName(i64 %31)
  %33 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %32)
  %34 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %37 = load i32, i32* @ACPI_NS_WALK_UNLOCK, align 4
  %38 = load i32, i32* @AcpiEvRegRun, align 4
  %39 = call i32 @AcpiNsWalkNamespace(i32 %34, i32* %35, i32 %36, i32 %37, i32 %38, i32* null, %struct.TYPE_3__* %7, i32* null)
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @ACPI_ADR_SPACE_EC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @AcpiEvOrphanEcRegMethod(i32* %44)
  br label %46

46:                                               ; preds = %43, %23
  %47 = load i32, i32* @ACPI_DB_NAMES, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @AcpiUtGetRegionName(i64 %51)
  %53 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %52)
  %54 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @AcpiUtGetRegionName(i64) #1

declare dso_local i32 @AcpiNsWalkNamespace(i32, i32*, i32, i32, i32, i32*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @AcpiEvOrphanEcRegMethod(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
