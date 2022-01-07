; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtables.c_AdGetLocalTables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtables.c_AdGetLocalTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@ACPI_SIG_DSDT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Could not obtain DSDT\0A\00", align 1
@AE_NO_ACPI_TABLES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Could not store DSDT\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AdGetLocalTables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ACPI_SIG_DSDT, align 4
  %9 = call i32 @ACPI_MOVE_32_TO_32(i32 %7, i32 %8)
  %10 = call i32 @AcpiOsTableOverride(%struct.TYPE_6__* %3, %struct.TYPE_6__** %4)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @ACPI_FAILURE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14, %0
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @AE_NO_ACPI_TABLES, align 4
  store i32 %20, i32* %1, align 4
  br label %42

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ACPI_SIG_DSDT, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @AdWriteTable(%struct.TYPE_6__* %22, i32 %25, i32 %26, i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = call i32 @AdStoreTable(%struct.TYPE_6__* %31, i32* %5)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @AE_NO_ACPI_TABLES, align 4
  store i32 %39, i32* %1, align 4
  br label %42

40:                                               ; preds = %21
  %41 = load i32, i32* @AE_OK, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %40, %36, %17
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @ACPI_MOVE_32_TO_32(i32, i32) #1

declare dso_local i32 @AcpiOsTableOverride(%struct.TYPE_6__*, %struct.TYPE_6__**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @AdWriteTable(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @AdStoreTable(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
