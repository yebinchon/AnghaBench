; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_toshiba.c_hci_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_toshiba.c_hci_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32 }

@HCI_WORDS = common dso_local global i32 0, align 4
@toshiba = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@HCI_REG_AX = common dso_local global i64 0, align 8
@HCI_REG_BX = common dso_local global i64 0, align 8
@HCI_SET = common dso_local global i32 0, align 4
@HCI_REG_CX = common dso_local global i64 0, align 8
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@METHOD_HCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"toshiba: invalid package!\0A\00", align 1
@HCI_SUCCESS = common dso_local global i32 0, align 4
@HCI_GET = common dso_local global i32 0, align 4
@HCI_REG_SYSTEM_EVENT = common dso_local global i32 0, align 4
@HCI_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @hci_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_call(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load i32, i32* @HCI_WORDS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca %struct.TYPE_11__, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* @toshiba, align 4
  %24 = call i32 @ACPI_SERIAL_ASSERT(i32 %23)
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %26

26:                                               ; preds = %41, %4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @HCI_WORDS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %16, align 4
  br label %26

44:                                               ; preds = %26
  %45 = load i32, i32* %7, align 4
  %46 = load i64, i64* @HCI_REG_AX, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i64, i64* @HCI_REG_BX, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @HCI_SET, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %44
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* @HCI_REG_CX, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  br label %65

65:                                               ; preds = %58, %44
  %66 = load i32, i32* @HCI_WORDS, align 4
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store i32 %70, i32* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @METHOD_HCI, align 4
  %74 = call i32 @AcpiEvaluateObject(i32 %72, i32 %73, %struct.TYPE_10__* %10, %struct.TYPE_12__* %11)
  %75 = call i64 @ACPI_FAILURE(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %125

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %14, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %83 = load i32, i32* @HCI_WORDS, align 4
  %84 = call i32 @ACPI_PKG_VALID(%struct.TYPE_11__* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %78
  %87 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @ENXIO, align 4
  store i32 %88, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %135

89:                                               ; preds = %78
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %91 = load i64, i64* @HCI_REG_AX, align 8
  %92 = call i32 @acpi_PkgInt32(%struct.TYPE_11__* %90, i64 %91, i32* %17)
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* @HCI_SUCCESS, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %89
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @HCI_GET, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %102 = load i64, i64* @HCI_REG_CX, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @acpi_PkgInt32(%struct.TYPE_11__* %101, i64 %102, i32* %103)
  br label %105

105:                                              ; preds = %100, %96
  store i32 0, i32* %15, align 4
  br label %124

106:                                              ; preds = %89
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @HCI_REG_SYSTEM_EVENT, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @HCI_GET, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* @HCI_NOT_SUPPORTED, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  store i32 1, i32* %16, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @HCI_SET, align 4
  %121 = load i32, i32* @HCI_REG_SYSTEM_EVENT, align 4
  %122 = call i32 @hci_call(i32 %119, i32 %120, i32 %121, i32* %16)
  br label %123

123:                                              ; preds = %118, %114, %110, %106
  br label %124

124:                                              ; preds = %123, %105
  br label %125

125:                                              ; preds = %124, %77
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @AcpiOsFree(i32* %131)
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i32, i32* %15, align 4
  store i32 %134, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %135

135:                                              ; preds = %133, %86
  %136 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @AcpiEvaluateObject(i32, i32, %struct.TYPE_10__*, %struct.TYPE_12__*) #2

declare dso_local i32 @ACPI_PKG_VALID(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @acpi_PkgInt32(%struct.TYPE_11__*, i64, i32*) #2

declare dso_local i32 @AcpiOsFree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
