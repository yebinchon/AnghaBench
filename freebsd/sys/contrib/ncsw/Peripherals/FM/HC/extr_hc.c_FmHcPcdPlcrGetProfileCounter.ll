; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdPlcrGetProfileCounter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdPlcrGetProfileCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i8*, i32, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8* }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"HC Frame object\00", align 1
@HC_HCOR_GBL = common dso_local global i32 0, align 4
@HC_HCOR_OPCODE_PLCR_PRFL = common dso_local global i32 0, align 4
@SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@NO_MSG = common dso_local global i8* null, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_SELECTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FmHcPcdPlcrGetProfileCounter(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i64, i64* %5, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @FmPcdPlcrProfileGetAbsoluteId(i64 %17)
  store i32 %18, i32* %9, align 4
  store i8* null, i8** %13, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* @E_INVALID_HANDLE, align 4
  %21 = call i32 @SANITY_CHECK_RETURN_VALUE(i64 %19, i32 %20, i32 0)
  %22 = load i32*, i32** %8, align 8
  %23 = call %struct.TYPE_9__* @GetBuf(i32* %22, i8** %14)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %11, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @MINOR, align 4
  %28 = load i64, i64* @E_NO_MEMORY, align 8
  %29 = call i32 @REPORT_ERROR(i32 %27, i64 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %109

30:                                               ; preds = %3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %32 = call i32 @memset(%struct.TYPE_9__* %31, i32 0, i32 72)
  %33 = load i32, i32* @HC_HCOR_GBL, align 4
  %34 = load i32, i32* @HC_HCOR_OPCODE_PLCR_PRFL, align 4
  %35 = or i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @FmPcdPlcrBuildReadPlcrActionReg(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 32768, i32* %45, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC, align 4
  %50 = call i32 @BUILD_FD(i32 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = call i64 @EnQFrm(i32* %51, i32* %12, i8* %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @E_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %30
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 @PutBuf(i32* %58, %struct.TYPE_9__* %59, i8* %60)
  %62 = load i32, i32* @MINOR, align 4
  %63 = load i64, i64* %10, align 8
  %64 = load i8*, i8** @NO_MSG, align 8
  %65 = call i32 @REPORT_ERROR(i32 %62, i64 %63, i8* %64)
  store i8* null, i8** %4, align 8
  br label %109

66:                                               ; preds = %30
  %67 = load i32, i32* %7, align 4
  switch i32 %67, label %98 [
    i32 132, label %68
    i32 128, label %74
    i32 129, label %80
    i32 130, label %86
    i32 131, label %92
  ]

68:                                               ; preds = %66
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %13, align 8
  br label %103

74:                                               ; preds = %66
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %13, align 8
  br label %103

80:                                               ; preds = %66
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %13, align 8
  br label %103

86:                                               ; preds = %66
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %13, align 8
  br label %103

92:                                               ; preds = %66
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %13, align 8
  br label %103

98:                                               ; preds = %66
  %99 = load i32, i32* @MAJOR, align 4
  %100 = load i64, i64* @E_INVALID_SELECTION, align 8
  %101 = load i8*, i8** @NO_MSG, align 8
  %102 = call i32 @REPORT_ERROR(i32 %99, i64 %100, i8* %101)
  br label %103

103:                                              ; preds = %98, %92, %86, %80, %74, %68
  %104 = load i32*, i32** %8, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 @PutBuf(i32* %104, %struct.TYPE_9__* %105, i8* %106)
  %108 = load i8*, i8** %13, align 8
  store i8* %108, i8** %4, align 8
  br label %109

109:                                              ; preds = %103, %57, %26
  %110 = load i8*, i8** %4, align 8
  ret i8* %110
}

declare dso_local i32 @FmPcdPlcrProfileGetAbsoluteId(i64) #1

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(i64, i32, i32) #1

declare dso_local %struct.TYPE_9__* @GetBuf(i32*, i8**) #1

declare dso_local i32 @REPORT_ERROR(i32, i64, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @FmPcdPlcrBuildReadPlcrActionReg(i32) #1

declare dso_local i32 @BUILD_FD(i32) #1

declare dso_local i64 @EnQFrm(i32*, i32*, i8*) #1

declare dso_local i32 @PutBuf(i32*, %struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
