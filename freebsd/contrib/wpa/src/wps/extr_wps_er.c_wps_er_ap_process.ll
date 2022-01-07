; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_ap = type { i32* }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32* }

@WSC_MSG = common dso_local global i32 0, align 4
@WSC_ACK = common dso_local global i32 0, align 4
@WSC_NACK = common dso_local global i32 0, align 4
@WSC_Done = common dso_local global i32 0, align 4
@WPS_CONTINUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"WPS ER: Failed to build message\00", align 1
@WPS_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"WPS ER: Protocol run done\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"WPS ER: Failed to process message from AP (res=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er_ap*, %struct.wpabuf*)* @wps_er_ap_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_ap_process(%struct.wps_er_ap* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_er_ap*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wps_parse_attr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  store %struct.wps_er_ap* %0, %struct.wps_er_ap** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %9 = load i32, i32* @WSC_MSG, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %11 = call i64 @wps_parse_msg(%struct.wpabuf* %10, %struct.wps_parse_attr* %6)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %27 [
    i32 130, label %21
    i32 128, label %23
    i32 129, label %25
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @WSC_ACK, align 4
  store i32 %22, i32* %7, align 4
  br label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @WSC_NACK, align 4
  store i32 %24, i32* %7, align 4
  br label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @WSC_Done, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %17, %25, %23, %21
  br label %28

28:                                               ; preds = %27, %13, %2
  %29 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %30 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %34 = call i32 @wps_process_msg(i32* %31, i32 %32, %struct.wpabuf* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @WPS_CONTINUE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %28
  %39 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %40 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call %struct.wpabuf* @wps_get_msg(i32* %41, i32* %7)
  store %struct.wpabuf* %42, %struct.wpabuf** %8, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %44 = icmp ne %struct.wpabuf* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %48 = call i32 @wps_er_ap_put_message(%struct.wps_er_ap* %46, %struct.wpabuf* %47)
  %49 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %50 = call i32 @wpabuf_free(%struct.wpabuf* %49)
  br label %60

51:                                               ; preds = %38
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %55 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @wps_deinit(i32* %56)
  %58 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %59 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %51, %45
  br label %85

61:                                               ; preds = %28
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @WPS_DONE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %69 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @wps_deinit(i32* %70)
  %72 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %73 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  br label %84

74:                                               ; preds = %61
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %79 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @wps_deinit(i32* %80)
  %82 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %83 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %74, %65
  br label %85

85:                                               ; preds = %84, %60
  ret void
}

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wps_process_msg(i32*, i32, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wps_get_msg(i32*, i32*) #1

declare dso_local i32 @wps_er_ap_put_message(%struct.wps_er_ap*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wps_deinit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
