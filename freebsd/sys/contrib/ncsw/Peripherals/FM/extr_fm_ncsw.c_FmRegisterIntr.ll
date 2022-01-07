; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmRegisterIntr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmRegisterIntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { void (i32)*, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@e_FM_EV_DUMMY_LAST = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_REGISTER_INTR = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@E_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"running in guest-mode without IPC!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FmRegisterIntr(i32 %0, i32 %1, i32 %2, i32 %3, void (i32)* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store void (i32)* %4, void (i32)** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ASSERT_COND(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @GET_FM_MODULE_EVENT(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @e_FM_EV_DUMMY_LAST, align 4
  %30 = icmp slt i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT_COND(i32 %31)
  %33 = load void (i32)*, void (i32)** %11, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store void (i32)* %33, void (i32)** %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %41, i32* %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NCSW_MASTER_ID, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %6
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %54
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  %69 = call i32 @memset(%struct.TYPE_9__* %17, i32 0, i32 8)
  %70 = load i32, i32* @FM_REGISTER_INTR, align 4
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i32 %73, %struct.TYPE_8__* %15, i32 16)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = bitcast %struct.TYPE_9__* %17 to i32*
  %81 = call i64 @XX_IpcSendMessage(i64 %79, i32* %80, i32 20, i32* null, i32* null, i32* null, i32* null)
  store i64 %81, i64* %16, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* @E_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %61
  %86 = load i32, i32* @MINOR, align 4
  %87 = load i64, i64* %16, align 8
  %88 = load i8*, i8** @NO_MSG, align 8
  %89 = call i32 @REPORT_ERROR(i32 %86, i64 %87, i8* %88)
  br label %90

90:                                               ; preds = %85, %61
  br label %102

91:                                               ; preds = %54, %6
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @NCSW_MASTER_ID, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* @MINOR, align 4
  %99 = load i64, i64* @E_NOT_SUPPORTED, align 8
  %100 = call i32 @REPORT_ERROR(i32 %98, i64 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %97, %91
  br label %102

102:                                              ; preds = %101, %90
  ret void
}

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @GET_FM_MODULE_EVENT(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @XX_IpcSendMessage(i64, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @REPORT_ERROR(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
