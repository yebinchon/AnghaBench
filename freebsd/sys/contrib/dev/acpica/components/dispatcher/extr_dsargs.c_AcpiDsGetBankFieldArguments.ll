; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dsargs.c_AcpiDsGetBankFieldArguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dsargs.c_AcpiDsGetBankFieldArguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@DsGetBankFieldArguments = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_BANK_FIELD = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[%4.4s] BankField Arg Init\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsGetBankFieldArguments(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %7 = load i32, i32* @DsGetBankFieldArguments, align 4
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %7, %struct.TYPE_16__* %8)
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @AE_OK, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = call %struct.TYPE_16__* @AcpiNsGetSecondaryObject(%struct.TYPE_16__* %21)
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %4, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %5, align 8
  %27 = load i32, i32* @ACPI_TYPE_LOCAL_BANK_FIELD, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = call i32 @AcpiUtDisplayInitPathname(i32 %27, %struct.TYPE_17__* %28, i32* null)
  %30 = call i32 @ACPI_DEBUG_EXEC(i32 %29)
  %31 = load i32, i32* @ACPI_DB_EXEC, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = call i32 @AcpiUtGetNodeName(%struct.TYPE_17__* %32)
  %34 = call i32 @ACPI_DEBUG_PRINT(i32 %33)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @AcpiDsExecuteArguments(%struct.TYPE_17__* %35, i32 %38, i32 %42, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %struct.TYPE_16__* @AcpiNsGetSecondaryObject(%struct.TYPE_16__*) #1

declare dso_local i32 @ACPI_DEBUG_EXEC(i32) #1

declare dso_local i32 @AcpiUtDisplayInitPathname(i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtGetNodeName(%struct.TYPE_17__*) #1

declare dso_local i32 @AcpiDsExecuteArguments(%struct.TYPE_17__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
