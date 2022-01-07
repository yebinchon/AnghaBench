; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmcstyle.c_AcpiDmIsOptimizationIgnored.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmcstyle.c_AcpiDmIsOptimizationIgnored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }

@AcpiGbl_DoDisassemblerOptimizations = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ACPI_PARSEOP_LEGACY_ASL_ONLY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_9__*)* @AcpiDmIsOptimizationIgnored to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiDmIsOptimizationIgnored(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load i64, i64* @AcpiGbl_DoDisassemblerOptimizations, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %102

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %99 [
    i32 139, label %18
    i32 128, label %18
    i32 131, label %18
    i32 132, label %18
    i32 130, label %18
    i32 129, label %18
    i32 138, label %18
    i32 136, label %18
    i32 135, label %18
    i32 133, label %18
    i32 134, label %44
    i32 137, label %77
  ]

18:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %6, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %7, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %8, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = call i32 @AcpiDmIsValidTarget(%struct.TYPE_9__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %18
  %36 = load i32, i32* @ACPI_PARSEOP_LEGACY_ASL_ONLY, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %3, align 4
  br label %102

43:                                               ; preds = %18
  br label %100

44:                                               ; preds = %13
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %6, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %7, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %8, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = call i32 @AcpiDmIsValidTarget(%struct.TYPE_9__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %44
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = call i32 @AcpiDmIsValidTarget(%struct.TYPE_9__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %61, %44
  %69 = load i32, i32* @ACPI_PARSEOP_LEGACY_ASL_ONLY, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %3, align 4
  br label %102

76:                                               ; preds = %61
  br label %100

77:                                               ; preds = %13
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %6, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %8, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = call i32 @AcpiDmIsValidTarget(%struct.TYPE_9__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %77
  %91 = load i32, i32* @ACPI_PARSEOP_LEGACY_ASL_ONLY, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %91
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %3, align 4
  br label %102

98:                                               ; preds = %77
  br label %100

99:                                               ; preds = %13
  br label %100

100:                                              ; preds = %99, %98, %76, %43
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %90, %68, %35, %11
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @AcpiDmIsValidTarget(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
