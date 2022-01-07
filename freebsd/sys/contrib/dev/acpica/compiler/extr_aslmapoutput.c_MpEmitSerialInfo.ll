; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslmapoutput.c_MpEmitSerialInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslmapoutput.c_MpEmitSerialInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_10__*, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@AslGbl_SerialList = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"I2C \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SPI \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"UART\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"UNKN\00", align 1
@ASL_FILE_MAP_OUTPUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"\0A\0A%s Controller:  \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%-8s  %-28s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"  // %s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Type  Address   Speed      Dest _HID  Destination\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"%s   %4.4X    %8.8X    \00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%8s   %-28s\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"  // %s (_DDN)\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @MpEmitSerialInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MpEmitSerialInfo() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i8* null, i8** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** @AslGbl_SerialList, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %1, align 8
  br label %10

10:                                               ; preds = %121, %0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %129

13:                                               ; preds = %10
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %24 [
    i32 130, label %21
    i32 129, label %22
    i32 128, label %23
  ]

21:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %25

22:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %25

23:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %25

24:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %25

25:                                               ; preds = %24, %23, %22, %21
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @MpGetHidViaNamestring(i8* %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %33, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %32, %25
  %40 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %44, i8* %47)
  %49 = load i8*, i8** %5, align 8
  %50 = call %struct.TYPE_9__* @AcpiAhMatchHardwareId(i8* %49)
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %6, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %39
  %54 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %39
  %60 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %61 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %62 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %63 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %32
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %4, align 8
  %68 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %69 = load i8*, i8** %2, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %69, i32 %72, i32 %75)
  store i8* null, i8** %3, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = call i8* @MpGetConnectionInfo(i32 %79, i32 0, i32* %81, i8** %3)
  store i8* %82, i8** %5, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %64
  %86 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %87, i8* %88)
  br label %121

90:                                               ; preds = %64
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = call i8* @MpGetParentDeviceHid(i32 %93, i32* %95, i8** %3)
  store i8* %96, i8** %5, align 8
  %97 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %98 = load i8*, i8** %5, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %98, i8* %99)
  %101 = load i8*, i8** %5, align 8
  %102 = call %struct.TYPE_9__* @AcpiAhMatchHardwareId(i8* %101)
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %6, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = icmp ne %struct.TYPE_9__* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %90
  %106 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  br label %120

111:                                              ; preds = %90
  %112 = load i8*, i8** %3, align 8
  %113 = call i8* @MpGetDdnValue(i8* %112)
  store i8* %113, i8** %7, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %115, %111
  br label %120

120:                                              ; preds = %119, %105
  br label %121

121:                                              ; preds = %120, %85
  %122 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %123 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %124 = load i8*, i8** %3, align 8
  %125 = call i32 @ACPI_FREE(i8* %124)
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  store %struct.TYPE_10__* %128, %struct.TYPE_10__** %1, align 8
  br label %10

129:                                              ; preds = %10
  ret void
}

declare dso_local i8* @MpGetHidViaNamestring(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @FlPrintFile(i32, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @AcpiAhMatchHardwareId(i8*) #1

declare dso_local i8* @MpGetConnectionInfo(i32, i32, i32*, i8**) #1

declare dso_local i8* @MpGetParentDeviceHid(i32, i32*, i8**) #1

declare dso_local i8* @MpGetDdnValue(i8*) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
