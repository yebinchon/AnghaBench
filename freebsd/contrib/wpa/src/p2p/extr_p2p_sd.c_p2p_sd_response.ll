; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_sd.c_p2p_sd_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_sd.c_p2p_sd_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__*, i32, i32, i64, i64, i32, i32, %struct.wpabuf* }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type opaque

@.str = private unnamed_addr constant [49 x i8] c"SD response long enough to require fragmentation\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Drop previous SD response\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Failed to allocate SD response fragmentation area\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"SD response fits in initial response\00", align 1
@P2P_NO_PENDING_ACTION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to send Action frame\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_sd_response(%struct.p2p_data* %0, i32 %1, i32* %2, i32 %3, %struct.wpabuf* %4) #0 {
  %6 = alloca %struct.p2p_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.wpabuf* %4, %struct.wpabuf** %10, align 8
  store i32 200, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 56160
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 928, i32 1400
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %20 = call i64 @wpabuf_len(%struct.wpabuf* %19)
  %21 = load i64, i64* %12, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %5
  %24 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %25 = call i32 @p2p_dbg(%struct.p2p_data* %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %27 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %26, i32 0, i32 7
  %28 = load %struct.wpabuf*, %struct.wpabuf** %27, align 8
  %29 = icmp ne %struct.wpabuf* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %32 = call i32 @p2p_dbg(%struct.p2p_data* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %34 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %33, i32 0, i32 7
  %35 = load %struct.wpabuf*, %struct.wpabuf** %34, align 8
  %36 = call i32 @wpabuf_free(%struct.wpabuf* %35)
  br label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %39 = call %struct.wpabuf* @wpabuf_dup(%struct.wpabuf* %38)
  %40 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %41 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %40, i32 0, i32 7
  store %struct.wpabuf* %39, %struct.wpabuf** %41, align 8
  %42 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %43 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %42, i32 0, i32 7
  %44 = load %struct.wpabuf*, %struct.wpabuf** %43, align 8
  %45 = icmp eq %struct.wpabuf* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %48 = call i32 @p2p_err(%struct.p2p_data* %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %113

49:                                               ; preds = %37
  %50 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %51 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @os_memcpy(i32 %52, i32* %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %58 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %60 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  %61 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %62 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  %65 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %66 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.wpabuf* @p2p_build_sd_response(i32 %63, i32 %64, i32 1, i32 %67, %struct.wpabuf* null)
  store %struct.wpabuf* %68, %struct.wpabuf** %11, align 8
  br label %79

69:                                               ; preds = %5
  %70 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %71 = call i32 @p2p_dbg(%struct.p2p_data* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  %74 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %75 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %78 = call %struct.wpabuf* @p2p_build_sd_response(i32 %72, i32 %73, i32 0, i32 %76, %struct.wpabuf* %77)
  store %struct.wpabuf* %78, %struct.wpabuf** %11, align 8
  br label %79

79:                                               ; preds = %69, %49
  %80 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %81 = icmp eq %struct.wpabuf* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %113

83:                                               ; preds = %79
  %84 = load i32, i32* @P2P_NO_PENDING_ACTION, align 4
  %85 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %86 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %91 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %96 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %101 = call i32 @wpabuf_head(%struct.wpabuf* %100)
  %102 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %103 = call i64 @wpabuf_len(%struct.wpabuf* %102)
  %104 = load i32, i32* %13, align 4
  %105 = call i64 @p2p_send_action(%struct.p2p_data* %87, i32 %88, i32* %89, i32 %94, i32 %99, i32 %101, i64 %103, i32 %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %83
  %108 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %109 = call i32 @p2p_dbg(%struct.p2p_data* %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %83
  %111 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %112 = call i32 @wpabuf_free(%struct.wpabuf* %111)
  br label %113

113:                                              ; preds = %110, %82, %46
  ret void
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_dup(%struct.wpabuf*) #1

declare dso_local i32 @p2p_err(%struct.p2p_data*, i8*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local %struct.wpabuf* @p2p_build_sd_response(i32, i32, i32, i32, %struct.wpabuf*) #1

declare dso_local i64 @p2p_send_action(%struct.p2p_data*, i32, i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
