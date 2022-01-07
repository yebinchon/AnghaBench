; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslmapoutput.c_MpEmitGpioInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslmapoutput.c_MpEmitGpioInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i64, i64, %struct.TYPE_7__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@AslGbl_GpioList = common dso_local global %struct.TYPE_7__* null, align 8
@ASL_FILE_MAP_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"\0A\0AGPIO Controller:  %-8s  %-28s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"  // %s\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"\0A\0APin   Type     Direction    Polarity    Dest _HID  Destination\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"GpioInt\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"-Interrupt-\00", align 1
@PolarityDecode = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"GpioIo \00", align 1
@DirectionDecode = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%4.4X  %s  %s  %s  \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%8s   %-28s\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"  // %s (_DDN)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @MpEmitGpioInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MpEmitGpioInfo() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i8* null, i8** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_GpioList, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %1, align 8
  br label %11

11:                                               ; preds = %128, %69, %0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %136

14:                                               ; preds = %11
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @MpGetHidViaNamestring(i8* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strcmp(i8* %22, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %21, %14
  %29 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = call %struct.TYPE_6__* @AcpiAhMatchHardwareId(i8* %35)
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %9, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39, %28
  %46 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %47 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %46, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %21
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %3, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %69 [
    i32 129, label %55
    i32 128, label %62
  ]

55:                                               ; preds = %48
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %56 = load i8**, i8*** @PolarityDecode, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %5, align 8
  br label %70

62:                                               ; preds = %48
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  %63 = load i8**, i8*** @DirectionDecode, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %4, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %70

69:                                               ; preds = %48
  br label %11

70:                                               ; preds = %62, %55
  %71 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %2, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %74, i8* %75, i8* %76, i8* %77)
  store i8* null, i8** %6, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 5
  %87 = call i8* @MpGetConnectionInfo(i32 %81, i32 %84, i32* %86, i8** %6)
  store i8* %87, i8** %8, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %70
  %91 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %92, i8* %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %96 = call i32 @MpXrefDevices(%struct.TYPE_7__* %95)
  br label %128

97:                                               ; preds = %70
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 5
  %103 = call i8* @MpGetParentDeviceHid(i32 %100, i32* %102, i8** %6)
  store i8* %103, i8** %8, align 8
  %104 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %105, i8* %106)
  %108 = load i8*, i8** %8, align 8
  %109 = call %struct.TYPE_6__* @AcpiAhMatchHardwareId(i8* %108)
  store %struct.TYPE_6__* %109, %struct.TYPE_6__** %9, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %111 = icmp ne %struct.TYPE_6__* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %97
  %113 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %127

118:                                              ; preds = %97
  %119 = load i8*, i8** %6, align 8
  %120 = call i8* @MpGetDdnValue(i8* %119)
  store i8* %120, i8** %7, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %112
  br label %128

128:                                              ; preds = %127, %90
  %129 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %130 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @ACPI_FREE(i8* %131)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %1, align 8
  br label %11

136:                                              ; preds = %11
  ret void
}

declare dso_local i8* @MpGetHidViaNamestring(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @FlPrintFile(i32, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @AcpiAhMatchHardwareId(i8*) #1

declare dso_local i8* @MpGetConnectionInfo(i32, i32, i32*, i8**) #1

declare dso_local i32 @MpXrefDevices(%struct.TYPE_7__*) #1

declare dso_local i8* @MpGetParentDeviceHid(i32, i32*, i8**) #1

declare dso_local i8* @MpGetDdnValue(i8*) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
