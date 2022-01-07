; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/hardware/extr_hwvalid.c_AcpiHwValidateIoRequest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/hardware/extr_hwvalid.c_AcpiHwValidateIoRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@HwValidateIoRequest = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Bad BitWidth parameter: %8.8X\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AcpiProtectedPorts = common dso_local global %struct.TYPE_3__* null, align 8
@ACPI_DB_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Address %8.8X%8.8X LastAddress %8.8X%8.8X Length %X\00", align 1
@ACPI_UINT16_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Illegal I/O port address/length above 64K: %8.8X%8.8X/0x%X\00", align 1
@AE_LIMIT = common dso_local global i32 0, align 4
@ACPI_PORT_INFO_ENTRIES = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AcpiGbl_OsiData = common dso_local global i64 0, align 8
@ACPI_DB_VALUES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"Denied AML access to port 0x%8.8X%8.8X/%X (%s 0x%.4X-0x%.4X)\0A\00", align 1
@AE_AML_ILLEGAL_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @AcpiHwValidateIoRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiHwValidateIoRequest(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @HwValidateIoRequest, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 8
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 16
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 32
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* @AE_INFO, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ACPI_ERROR(i32 %22)
  %24 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %20, %17, %14, %2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AcpiProtectedPorts, align 8
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %9, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ACPI_DIV_8(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @ACPI_DB_IO, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @ACPI_FORMAT_UINT64(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ACPI_FORMAT_UINT64(i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ACPI_DEBUG_PRINT(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ACPI_UINT16_MAX, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %26
  %45 = load i32, i32* @AE_INFO, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ACPI_FORMAT_UINT64(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ACPI_ERROR(i32 %48)
  %50 = load i32, i32* @AE_LIMIT, align 4
  %51 = call i32 @return_ACPI_STATUS(i32 %50)
  br label %52

52:                                               ; preds = %44, %26
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AcpiProtectedPorts, align 8
  %55 = load i32, i32* @ACPI_PORT_INFO_ENTRIES, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %53, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @AE_OK, align 4
  %64 = call i32 @return_ACPI_STATUS(i32 %63)
  br label %65

65:                                               ; preds = %62, %52
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %114, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @ACPI_PORT_INFO_ENTRIES, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %119

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sle i32 %71, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %77, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %76
  %83 = load i64, i64* @AcpiGbl_OsiData, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %83, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load i32, i32* @ACPI_DB_VALUES, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @ACPI_FORMAT_UINT64(i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ACPI_DEBUG_PRINT(i32 %101)
  %103 = load i32, i32* @AE_AML_ILLEGAL_ADDRESS, align 4
  %104 = call i32 @return_ACPI_STATUS(i32 %103)
  br label %105

105:                                              ; preds = %88, %82
  br label %106

106:                                              ; preds = %105, %76, %70
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sle i32 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %119

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 1
  store %struct.TYPE_3__* %118, %struct.TYPE_3__** %9, align 8
  br label %66

119:                                              ; preds = %112, %66
  %120 = load i32, i32* @AE_OK, align 4
  %121 = call i32 @return_ACPI_STATUS(i32 %120)
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DIV_8(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
