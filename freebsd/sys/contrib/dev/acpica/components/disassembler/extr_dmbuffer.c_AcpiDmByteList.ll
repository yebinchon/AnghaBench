; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmbuffer.c_AcpiDmByteList.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmbuffer.c_AcpiDmByteList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_17__ }
%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i32* }

@ACPI_UINT16_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmByteList(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %56 [
    i32 131, label %23
    i32 130, label %32
    i32 128, label %42
    i32 129, label %45
    i32 132, label %48
    i32 133, label %55
  ]

23:                                               ; preds = %2
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @AcpiDmResourceTemplate(%struct.TYPE_19__* %24, %struct.TYPE_13__* %28, i32* %29, i64 %30)
  br label %63

32:                                               ; preds = %2
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @AcpiDmIndent(i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = load i32, i32* @ACPI_UINT16_MAX, align 4
  %40 = call i32 @AcpiUtPrintString(i8* %38, i32 %39)
  %41 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %63

42:                                               ; preds = %2
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = call i32 @AcpiDmUuid(%struct.TYPE_18__* %43)
  br label %63

45:                                               ; preds = %2
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = call i32 @AcpiDmUnicode(%struct.TYPE_18__* %46)
  br label %63

48:                                               ; preds = %2
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @AcpiDmPldBuffer(i32 %51, i32* %52, i64 %53)
  br label %63

55:                                               ; preds = %2
  br label %56

56:                                               ; preds = %2, %55
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @AcpiDmDisasmByteList(i32 %59, i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %56, %48, %45, %42, %32, %23
  ret void
}

declare dso_local i32 @AcpiDmResourceTemplate(%struct.TYPE_19__*, %struct.TYPE_13__*, i32*, i64) #1

declare dso_local i32 @AcpiDmIndent(i32) #1

declare dso_local i32 @AcpiUtPrintString(i8*, i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*) #1

declare dso_local i32 @AcpiDmUuid(%struct.TYPE_18__*) #1

declare dso_local i32 @AcpiDmUnicode(%struct.TYPE_18__*) #1

declare dso_local i32 @AcpiDmPldBuffer(i32, i32*, i64) #1

declare dso_local i32 @AcpiDmDisasmByteList(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
