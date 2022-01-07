; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, i32, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 (i32, i32, i32, %struct.wpabuf*)*, i32, i32, i32 }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Going to listen(only) state\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"p2p_listen command pending already\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unknown regulatory class/channel\00", align 1
@P2P_AFTER_SCAN_CONNECT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"p2p_scan running - connect is already pending - skip listen\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"p2p_scan running - delay start of listen state\00", align 1
@P2P_AFTER_SCAN_LISTEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to start listen mode\00", align 1
@P2P_LISTEN_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_listen(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpabuf*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %9 = call i32 @p2p_dbg(%struct.p2p_data* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %11 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %16 = call i32 @p2p_dbg(%struct.p2p_data* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %19 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %24 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @p2p_channel_to_freq(i32 %22, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %33 = call i32 @p2p_dbg(%struct.p2p_data* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %101

34:                                               ; preds = %17
  %35 = load i32, i32* %5, align 4
  %36 = udiv i32 %35, 1000
  %37 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %38 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = urem i32 %39, 1000
  %41 = mul i32 %40, 1000
  %42 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %43 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %45 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %34
  %49 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %50 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @P2P_AFTER_SCAN_CONNECT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %56 = call i32 @p2p_dbg(%struct.p2p_data* %55, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

57:                                               ; preds = %48
  %58 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %59 = call i32 @p2p_dbg(%struct.p2p_data* %58, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i64, i64* @P2P_AFTER_SCAN_LISTEN, align 8
  %61 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %62 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  store i32 0, i32* %3, align 4
  br label %101

63:                                               ; preds = %34
  %64 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %65 = call %struct.wpabuf* @p2p_build_probe_resp_ies(%struct.p2p_data* %64, i32* null, i32 0)
  store %struct.wpabuf* %65, %struct.wpabuf** %7, align 8
  %66 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %67 = icmp eq %struct.wpabuf* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %101

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %72 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %74 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64 (i32, i32, i32, %struct.wpabuf*)*, i64 (i32, i32, i32, %struct.wpabuf*)** %76, align 8
  %78 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %79 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %86 = call i64 %77(i32 %82, i32 %83, i32 %84, %struct.wpabuf* %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %69
  %89 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %90 = call i32 @p2p_dbg(%struct.p2p_data* %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %91 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %92 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %94 = call i32 @wpabuf_free(%struct.wpabuf* %93)
  store i32 -1, i32* %3, align 4
  br label %101

95:                                               ; preds = %69
  %96 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %97 = call i32 @wpabuf_free(%struct.wpabuf* %96)
  %98 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %99 = load i32, i32* @P2P_LISTEN_ONLY, align 4
  %100 = call i32 @p2p_set_state(%struct.p2p_data* %98, i32 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %88, %68, %57, %54, %31, %14
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @p2p_channel_to_freq(i32, i32) #1

declare dso_local %struct.wpabuf* @p2p_build_probe_resp_ies(%struct.p2p_data*, i32*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
