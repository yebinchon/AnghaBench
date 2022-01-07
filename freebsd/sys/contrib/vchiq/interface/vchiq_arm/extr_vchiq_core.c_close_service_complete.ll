; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_close_service_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_close_service_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i64, i8*, i64, i32, i32 }

@VCHIQ_FOURCC_INVALID = common dso_local global i64 0, align 8
@VCHIQ_PORT_FREE = common dso_local global i8* null, align 8
@VCHIQ_SRVSTATE_CLOSEWAIT = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_CLOSED = common dso_local global i64 0, align 8
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"close_service_complete(%x) called in state %s\00", align 1
@srvstate_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"close_service_complete in unexpected state\0A\00", align 1
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@VCHIQ_SERVICE_CLOSED = common dso_local global i32 0, align 4
@VCHIQ_RETRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32)* @close_service_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @close_service_complete(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VCHIQ_FOURCC_INVALID, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %46 [
    i32 128, label %20
    i32 130, label %20
    i32 131, label %20
    i32 129, label %45
  ]

20:                                               ; preds = %2, %2, %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load i8*, i8** @VCHIQ_PORT_FREE, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  store i32 129, i32* %8, align 4
  br label %37

34:                                               ; preds = %23
  %35 = load i64, i64* @VCHIQ_SRVSTATE_CLOSEWAIT, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %28
  br label %41

38:                                               ; preds = %20
  %39 = load i64, i64* @VCHIQ_SRVSTATE_CLOSED, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @vchiq_set_service_state(%struct.TYPE_7__* %42, i32 %43)
  br label %61

45:                                               ; preds = %2
  br label %61

46:                                               ; preds = %2
  %47 = load i32, i32* @vchiq_core_log_level, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** @srvstate_names, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @vchiq_log_error(i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %57)
  %59 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %60, i64* %3, align 8
  br label %122

61:                                               ; preds = %45, %41
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = load i32, i32* @VCHIQ_SERVICE_CLOSED, align 4
  %64 = call i64 @make_service_callback(%struct.TYPE_7__* %62, i32 %63, i32* null, i32* null)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @VCHIQ_RETRY, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %116

68:                                               ; preds = %61
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %79, %68
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = call i32 @vchiq_release_service_internal(%struct.TYPE_7__* %77)
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %72

82:                                               ; preds = %72
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load i8*, i8** @VCHIQ_PORT_FREE, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* @VCHIQ_SRVSTATE_CLOSED, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = call i32 @vchiq_free_service_internal(%struct.TYPE_7__* %95)
  br label %115

97:                                               ; preds = %82
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @VCHIQ_SRVSTATE_CLOSEWAIT, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %97
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 4
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = call i32 @up(i32* %112)
  br label %114

114:                                              ; preds = %110, %97
  br label %115

115:                                              ; preds = %114, %94
  br label %120

116:                                              ; preds = %61
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @vchiq_set_service_state(%struct.TYPE_7__* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %115
  %121 = load i64, i64* %6, align 8
  store i64 %121, i64* %3, align 8
  br label %122

122:                                              ; preds = %120, %46
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

declare dso_local i32 @vchiq_set_service_state(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @vchiq_log_error(i32, i8*, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @make_service_callback(%struct.TYPE_7__*, i32, i32*, i32*) #1

declare dso_local i32 @vchiq_release_service_internal(%struct.TYPE_7__*) #1

declare dso_local i32 @vchiq_free_service_internal(%struct.TYPE_7__*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
