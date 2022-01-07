; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/hardware/extr_hwgpe.c_AcpiHwGetGpeStatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/hardware/extr_hwgpe.c_AcpiHwGetGpeStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_GPE_DISPATCH_NONE = common dso_local global i64 0, align 8
@ACPI_EVENT_FLAG_HAS_HANDLER = common dso_local global i32 0, align 4
@ACPI_EVENT_FLAG_ENABLED = common dso_local global i32 0, align 4
@ACPI_EVENT_FLAG_MASKED = common dso_local global i32 0, align 4
@ACPI_EVENT_FLAG_WAKE_ENABLED = common dso_local global i32 0, align 4
@ACPI_EVENT_FLAG_ENABLE_SET = common dso_local global i32 0, align 4
@ACPI_EVENT_FLAG_STATUS_SET = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiHwGetGpeStatus(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %15, i32* %3, align 4
  br label %105

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @ACPI_GPE_DISPATCH_TYPE(i32 %19)
  %21 = load i64, i64* @ACPI_GPE_DISPATCH_NONE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @ACPI_EVENT_FLAG_HAS_HANDLER, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %8, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = call i32 @AcpiHwGetGpeRegisterBit(%struct.TYPE_6__* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* @ACPI_EVENT_FLAG_ENABLED, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %27
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @ACPI_EVENT_FLAG_MASKED, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @ACPI_EVENT_FLAG_WAKE_ENABLED, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %54
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = call i32 @AcpiHwRead(i32* %6, i32* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @ACPI_FAILURE(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %105

74:                                               ; preds = %65
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @ACPI_EVENT_FLAG_ENABLE_SET, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = call i32 @AcpiHwRead(i32* %6, i32* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @ACPI_FAILURE(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  br label %105

92:                                               ; preds = %83
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @ACPI_EVENT_FLAG_STATUS_SET, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load i32, i32* %9, align 4
  %103 = load i32*, i32** %5, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @AE_OK, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %90, %72, %14
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i64 @ACPI_GPE_DISPATCH_TYPE(i32) #1

declare dso_local i32 @AcpiHwGetGpeRegisterBit(%struct.TYPE_6__*) #1

declare dso_local i32 @AcpiHwRead(i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
