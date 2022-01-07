; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/events/extr_evgpeblk.c_AcpiEvCreateGpeBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/events/extr_evgpeblk.c_AcpiEvCreateGpeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i8*, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_15__*, %struct.TYPE_17__* }

@EvCreateGpeBlock = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_GPE_REGISTER_WIDTH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@AcpiGbl_AllGpesInitialized = common dso_local global i8* null, align 8
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_NS_WALK_NO_UNLOCK = common dso_local global i32 0, align 4
@AcpiEvMatchGpeMethod = common dso_local global i32 0, align 4
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"    Initialized GPE %02X to %02X [%4.4s] %u regs on interrupt 0x%X%s\0A\00", align 1
@AcpiGbl_FADT = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" (SCI)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AcpiCurrentGpeCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiEvCreateGpeBlock(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, %struct.TYPE_17__** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_17__** %6, %struct.TYPE_17__*** %15, align 8
  %19 = load i32, i32* @EvCreateGpeBlock, align 4
  %20 = call i32 @ACPI_FUNCTION_TRACE(i32 %19)
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @AE_OK, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %23, %7
  %27 = call %struct.TYPE_17__* @ACPI_ALLOCATE_ZEROED(i32 56)
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %17, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %29 = icmp ne %struct.TYPE_17__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @AE_NO_MEMORY, align 4
  %32 = call i32 @return_ACPI_STATUS(i32 %31)
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 6
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** @FALSE, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i8*, i8** %13, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %62 = call i32 @AcpiEvCreateGpeInfoBlocks(%struct.TYPE_17__* %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i64 @ACPI_FAILURE(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %33
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %68 = call i32 @ACPI_FREE(%struct.TYPE_17__* %67)
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @return_ACPI_STATUS(i32 %69)
  br label %71

71:                                               ; preds = %66, %33
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @AcpiEvInstallGpeBlock(%struct.TYPE_17__* %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i64 @ACPI_FAILURE(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = call i32 @ACPI_FREE(%struct.TYPE_17__* %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = call i32 @ACPI_FREE(%struct.TYPE_17__* %85)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %88 = call i32 @ACPI_FREE(%struct.TYPE_17__* %87)
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @return_ACPI_STATUS(i32 %89)
  br label %91

91:                                               ; preds = %78, %71
  %92 = load i8*, i8** @FALSE, align 8
  store i8* %92, i8** @AcpiGbl_AllGpesInitialized, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  store %struct.TYPE_17__* %93, %struct.TYPE_17__** %94, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  store %struct.TYPE_15__* %95, %struct.TYPE_15__** %96, align 8
  %97 = load i8*, i8** @FALSE, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i8* %97, i8** %98, align 8
  %99 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %101 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %102 = load i32, i32* @ACPI_NS_WALK_NO_UNLOCK, align 4
  %103 = load i32, i32* @AcpiEvMatchGpeMethod, align 4
  %104 = call i32 @AcpiNsWalkNamespace(i32 %99, %struct.TYPE_15__* %100, i32 %101, i32 %102, i32 %103, i32* null, %struct.TYPE_16__* %18, i32* null)
  %105 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %15, align 8
  %106 = icmp ne %struct.TYPE_17__** %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %91
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %109 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %15, align 8
  store %struct.TYPE_17__* %108, %struct.TYPE_17__** %109, align 8
  br label %110

110:                                              ; preds = %107, %91
  %111 = load i32, i32* @ACPI_DB_INIT, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, 1
  %122 = add nsw i32 %117, %121
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @AcpiGbl_FADT, i32 0, i32 0), align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %136 = ptrtoint i8* %135 to i32
  %137 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %136)
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @AcpiCurrentGpeCount, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* @AcpiCurrentGpeCount, align 4
  %143 = load i32, i32* @AE_OK, align 4
  %144 = call i32 @return_ACPI_STATUS(i32 %143)
  %145 = load i32, i32* %8, align 4
  ret i32 %145
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %struct.TYPE_17__* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @AcpiEvCreateGpeInfoBlocks(%struct.TYPE_17__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_17__*) #1

declare dso_local i32 @AcpiEvInstallGpeBlock(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @AcpiNsWalkNamespace(i32, %struct.TYPE_15__*, i32, i32, i32, i32*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
