; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopcodes.c_OpcDoConnection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopcodes.c_OpcDoConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64, i32, %struct.TYPE_11__, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__* }

@AML_INT_NAMEPATH_OP = common dso_local global i64 0, align 8
@ACPI_RSTATE_NORMAL = common dso_local global i32 0, align 4
@PARSEOP_BUFFER = common dso_local global i32 0, align 4
@AML_BUFFER_OP = common dso_local global i64 0, align 8
@OP_AML_PACKAGE = common dso_local global i32 0, align 4
@OP_IS_RESOURCE_DESC = common dso_local global i32 0, align 4
@PARSEOP_INTEGER = common dso_local global i32 0, align 4
@PARSEOP_RAW_DATA = common dso_local global i32 0, align 4
@AML_RAW_DATA_CHAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @OpcDoConnection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OpcDoConnection(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 7
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AML_INT_NAMEPATH_OP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %103

22:                                               ; preds = %1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 7
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %4, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %5, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %6, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @ACPI_RSTATE_NORMAL, align 4
  store i32 %41, i32* %8, align 4
  %42 = call %struct.TYPE_13__* @RsDoOneResourceDescriptor(%struct.TYPE_14__* %7, i32* %8)
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %3, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = icmp ne %struct.TYPE_13__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %22
  br label %103

46:                                               ; preds = %22
  %47 = load i32, i32* @PARSEOP_BUFFER, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* @AML_BUFFER_OP, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  store i64 %51, i64* %54, align 8
  %55 = load i32, i32* @OP_AML_PACKAGE, align 4
  %56 = load i32, i32* @OP_IS_RESOURCE_DESC, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = call i32 @UtSetParseOpName(%struct.TYPE_15__* %61)
  %63 = load i32, i32* @PARSEOP_INTEGER, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 5
  store i32 %63, i32* %66, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = call i32 @OpcSetOptimalIntegerSize(%struct.TYPE_15__* %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = call i32 @UtSetParseOpName(%struct.TYPE_15__* %76)
  %78 = load i32, i32* @PARSEOP_RAW_DATA, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 5
  store i32 %78, i32* %81, align 4
  %82 = load i64, i64* @AML_RAW_DATA_CHAIN, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i64 %82, i64* %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  store i32 %91, i32* %94, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = bitcast %struct.TYPE_13__* %95 to i32*
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i32* %96, i32** %100, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %102 = call i32 @UtSetParseOpName(%struct.TYPE_15__* %101)
  br label %103

103:                                              ; preds = %46, %45, %21
  ret void
}

declare dso_local %struct.TYPE_13__* @RsDoOneResourceDescriptor(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @UtSetParseOpName(%struct.TYPE_15__*) #1

declare dso_local i32 @OpcSetOptimalIntegerSize(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
