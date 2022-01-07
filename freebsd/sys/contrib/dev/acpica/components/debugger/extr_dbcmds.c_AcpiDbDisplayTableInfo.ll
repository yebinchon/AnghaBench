; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbcmds.c_AcpiDbDisplayTableInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbcmds.c_AcpiDbDisplayTableInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [83 x i8] c"Idx ID    Status Type                    TableHeader (Sig, Address, Length, Misc)\0A\00", align 1
@AcpiGbl_RootTableList = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%3u %.2u \00", align 1
@ACPI_TABLE_IS_LOADED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"NotLoaded \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"   Loaded \00", align 1
@ACPI_TABLE_ORIGIN_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"External/virtual  \00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Internal/physical \00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Internal/virtual  \00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"INVALID TYPE      \00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"%4.4s - Table has been unloaded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDbDisplayTableInfo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %73, %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %76

11:                                               ; preds = %7
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @AcpiGbl_RootTableList, i32 0, i32 1), align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %13
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %15, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ACPI_TABLE_IS_LOADED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %11
  %27 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %30

28:                                               ; preds = %11
  %29 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ACPI_TABLE_ORIGIN_MASK, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %42 [
    i32 130, label %36
    i32 129, label %38
    i32 128, label %40
  ]

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %44

38:                                               ; preds = %30
  %39 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %44

40:                                               ; preds = %30
  %41 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %44

42:                                               ; preds = %30
  %43 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %40, %38, %36
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = call i32 @AcpiTbValidateTable(%struct.TYPE_6__* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @ACPI_FAILURE(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %76

51:                                               ; preds = %44
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @AcpiTbPrintTableHeader(i32 %59, i64 %62)
  br label %72

64:                                               ; preds = %51
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @ACPI_INFO(i8* %70)
  br label %72

72:                                               ; preds = %64, %56
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %3, align 8
  br label %7

76:                                               ; preds = %50, %7
  ret void
}

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @AcpiTbValidateTable(%struct.TYPE_6__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiTbPrintTableHeader(i32, i64) #1

declare dso_local i32 @ACPI_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
