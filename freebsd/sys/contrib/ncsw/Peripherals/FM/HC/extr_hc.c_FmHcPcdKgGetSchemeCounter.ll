; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdKgGetSchemeCounter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdKgGetSchemeCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i8*, i32, i32, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i32 }

@FM_PCD_KG_NUM_OF_SCHEMES = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_NOT_IN_RANGE = common dso_local global i64 0, align 8
@NO_MSG = common dso_local global i8* null, align 8
@MINOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"HC Frame object\00", align 1
@HC_HCOR_GBL = common dso_local global i32 0, align 4
@HC_HCOR_OPCODE_KG_SCM = common dso_local global i32 0, align 4
@HC_HCOR_KG_SCHEME_REGS_MASK = common dso_local global i32 0, align 4
@SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@E_ALREADY_EXISTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Scheme is invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FmHcPcdKgGetSchemeCounter(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @FmPcdKgGetSchemeId(i64 %16)
  store i64 %17, i64* %12, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %12, align 8
  %22 = call i64 @FmPcdKgGetRelativeSchemeId(i32 %20, i64 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @FM_PCD_KG_NUM_OF_SCHEMES, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @MAJOR, align 4
  %28 = load i64, i64* @E_NOT_IN_RANGE, align 8
  %29 = load i8*, i8** @NO_MSG, align 8
  %30 = call i32 @REPORT_ERROR(i32 %27, i64 %28, i8* %29)
  store i8* null, i8** %3, align 8
  br label %104

31:                                               ; preds = %2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = call %struct.TYPE_13__* @GetBuf(%struct.TYPE_14__* %32, i8** %13)
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %8, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @MINOR, align 4
  %38 = load i64, i64* @E_NO_MEMORY, align 8
  %39 = call i32 @REPORT_ERROR(i32 %37, i64 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %104

40:                                               ; preds = %31
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = call i32 @memset(%struct.TYPE_13__* %41, i32 0, i32 40)
  %43 = load i32, i32* @HC_HCOR_GBL, align 4
  %44 = load i32, i32* @HC_HCOR_OPCODE_KG_SCM, align 4
  %45 = or i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @FmPcdKgBuildReadSchemeActionReg(i64 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @HC_HCOR_KG_SCHEME_REGS_MASK, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC, align 4
  %61 = call i32 @BUILD_FD(i32 %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i64 @EnQFrm(%struct.TYPE_14__* %62, i32* %9, i8* %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @E_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %40
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @PutBuf(%struct.TYPE_14__* %69, %struct.TYPE_13__* %70, i8* %71)
  %73 = load i32, i32* @MINOR, align 4
  %74 = load i64, i64* %7, align 8
  %75 = load i8*, i8** @NO_MSG, align 8
  %76 = call i32 @REPORT_ERROR(i32 %73, i64 %74, i8* %75)
  store i8* null, i8** %3, align 8
  br label %104

77:                                               ; preds = %40
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @FmPcdKgHwSchemeIsValid(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @PutBuf(%struct.TYPE_14__* %86, %struct.TYPE_13__* %87, i8* %88)
  %90 = load i32, i32* @MAJOR, align 4
  %91 = load i64, i64* @E_ALREADY_EXISTS, align 8
  %92 = call i32 @REPORT_ERROR(i32 %90, i64 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %104

93:                                               ; preds = %77
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %10, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @PutBuf(%struct.TYPE_14__* %99, %struct.TYPE_13__* %100, i8* %101)
  %103 = load i8*, i8** %10, align 8
  store i8* %103, i8** %3, align 8
  br label %104

104:                                              ; preds = %93, %85, %68, %36, %26
  %105 = load i8*, i8** %3, align 8
  ret i8* %105
}

declare dso_local i64 @FmPcdKgGetSchemeId(i64) #1

declare dso_local i64 @FmPcdKgGetRelativeSchemeId(i32, i64) #1

declare dso_local i32 @REPORT_ERROR(i32, i64, i8*) #1

declare dso_local %struct.TYPE_13__* @GetBuf(%struct.TYPE_14__*, i8**) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @FmPcdKgBuildReadSchemeActionReg(i64) #1

declare dso_local i32 @BUILD_FD(i32) #1

declare dso_local i64 @EnQFrm(%struct.TYPE_14__*, i32*, i8*) #1

declare dso_local i32 @PutBuf(%struct.TYPE_14__*, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @FmPcdKgHwSchemeIsValid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
