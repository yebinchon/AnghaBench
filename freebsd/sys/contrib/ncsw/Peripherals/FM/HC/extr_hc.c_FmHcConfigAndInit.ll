; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcConfigAndInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcConfigAndInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }

@MINOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"HC obj\00", align 1
@DEFAULT_dataMemId = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@e_FM_PORT_TYPE_OH_HOST_COMMAND = common dso_local global i32 0, align 4
@E_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"FM HC port!\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"FM HC port init!\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"FM HC port enable!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @FmHcConfigAndInit(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %7 = call i64 @XX_Malloc(i32 52)
  %8 = inttoptr i64 %7 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %8, %struct.TYPE_16__** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = icmp ne %struct.TYPE_16__* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @MINOR, align 4
  %13 = load i64, i64* @E_NO_MEMORY, align 8
  %14 = call i32 @REPORT_ERROR(i32 %12, i64 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %161

15:                                               ; preds = %1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = call i32 @memset(%struct.TYPE_16__* %16, i32 0, i32 52)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @DEFAULT_dataMemId, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = call i64 @FillBufPool(%struct.TYPE_16__* %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @E_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %15
  %44 = load i32, i32* @MAJOR, align 4
  %45 = load i64, i64* %6, align 8
  %46 = load i8*, i8** @NO_MSG, align 8
  %47 = call i32 @REPORT_ERROR(i32 %44, i64 %45, i8* %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = call i32 @FmHcFree(%struct.TYPE_16__* %48)
  store i32* null, i32** %2, align 8
  br label %161

50:                                               ; preds = %15
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @FmIsMaster(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = bitcast %struct.TYPE_16__* %57 to i32*
  store i32* %58, i32** %2, align 8
  br label %161

59:                                               ; preds = %50
  %60 = call i32 @memset(%struct.TYPE_16__* %5, i32 0, i32 52)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 6
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @e_FM_PORT_TYPE_OH_HOST_COMMAND, align 4
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 5
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 4
  store i32 %71, i32* %72, align 4
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = call i32 @FM_PORT_Config(%struct.TYPE_16__* %5)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %59
  %111 = load i32, i32* @MAJOR, align 4
  %112 = load i64, i64* @E_INVALID_HANDLE, align 8
  %113 = call i32 @REPORT_ERROR(i32 %111, i64 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %115 = call i32 @XX_Free(%struct.TYPE_16__* %114)
  store i32* null, i32** %2, align 8
  br label %161

116:                                              ; preds = %59
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @FM_PORT_ConfigMaxFrameLength(i32 %119, i32 4)
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* @E_OK, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load i32, i32* @MAJOR, align 4
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @REPORT_ERROR(i32 %125, i64 %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = call i32 @FmHcFree(%struct.TYPE_16__* %128)
  store i32* null, i32** %2, align 8
  br label %161

130:                                              ; preds = %116
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @FM_PORT_Init(i32 %133)
  store i64 %134, i64* %6, align 8
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* @E_OK, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %130
  %139 = load i32, i32* @MAJOR, align 4
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @REPORT_ERROR(i32 %139, i64 %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %143 = call i32 @FmHcFree(%struct.TYPE_16__* %142)
  store i32* null, i32** %2, align 8
  br label %161

144:                                              ; preds = %130
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @FM_PORT_Enable(i32 %147)
  store i64 %148, i64* %6, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* @E_OK, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load i32, i32* @MAJOR, align 4
  %154 = load i64, i64* %6, align 8
  %155 = call i32 @REPORT_ERROR(i32 %153, i64 %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %157 = call i32 @FmHcFree(%struct.TYPE_16__* %156)
  store i32* null, i32** %2, align 8
  br label %161

158:                                              ; preds = %144
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %160 = bitcast %struct.TYPE_16__* %159 to i32*
  store i32* %160, i32** %2, align 8
  br label %161

161:                                              ; preds = %158, %152, %138, %124, %110, %56, %43, %11
  %162 = load i32*, i32** %2, align 8
  ret i32* %162
}

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i64, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @FillBufPool(%struct.TYPE_16__*) #1

declare dso_local i32 @FmHcFree(%struct.TYPE_16__*) #1

declare dso_local i32 @FmIsMaster(i32) #1

declare dso_local i32 @FM_PORT_Config(%struct.TYPE_16__*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_16__*) #1

declare dso_local i64 @FM_PORT_ConfigMaxFrameLength(i32, i32) #1

declare dso_local i64 @FM_PORT_Init(i32) #1

declare dso_local i64 @FM_PORT_Enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
