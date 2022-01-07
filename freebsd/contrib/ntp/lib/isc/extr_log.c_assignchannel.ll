; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_assignchannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_assignchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_16__* }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@ISC_R_NOMEMORY = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@ISC_LOG_TONULL = common dso_local global i64 0, align 8
@ISC_LOG_DYNAMIC = common dso_local global i64 0, align 8
@ISC_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32, %struct.TYPE_13__*, %struct.TYPE_16__*)* @assignchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @assignchannel(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_13__* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = call i32 @VALID_CONFIG(%struct.TYPE_14__* %13)
  %15 = call i32 @REQUIRE(i32 %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @REQUIRE(i32 %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = icmp eq %struct.TYPE_13__* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br label %36

36:                                               ; preds = %28, %4
  %37 = phi i1 [ true, %4 ], [ %35, %28 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @REQUIRE(i32 %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %41 = icmp ne %struct.TYPE_16__* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @REQUIRE(i32 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = call i64 @sync_channellist(%struct.TYPE_14__* %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @ISC_R_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i64, i64* %12, align 8
  store i64 %50, i64* %5, align 8
  br label %109

51:                                               ; preds = %36
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_15__* @isc_mem_get(i32 %54, i32 16)
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %10, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %57 = icmp eq %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %59, i64* %5, align 8
  br label %109

60:                                               ; preds = %51
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %75 = load i32, i32* @link, align 4
  %76 = call i32 @ISC_LIST_INITANDPREPEND(i32 %73, %struct.TYPE_15__* %74, i32 %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ISC_LOG_TONULL, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %107

82:                                               ; preds = %60
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %82
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ISC_LOG_DYNAMIC, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @ISC_TRUE, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %102, %96
  br label %107

107:                                              ; preds = %106, %60
  %108 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %108, i64* %5, align 8
  br label %109

109:                                              ; preds = %107, %58, %49
  %110 = load i64, i64* %5, align 8
  ret i64 %110
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_CONFIG(%struct.TYPE_14__*) #1

declare dso_local i64 @sync_channellist(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @isc_mem_get(i32, i32) #1

declare dso_local i32 @ISC_LIST_INITANDPREPEND(i32, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
