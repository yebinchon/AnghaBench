; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_process_wlanevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_process_wlanevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_ap = type { i32 }
%struct.wpabuf = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WPS ER: Received WLANEvent\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"WPS ER: Too short WLANEvent\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"WPS ER: Invalid WLANEventMAC in WLANEvent\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"WPS ER: Unknown WLANEventType %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er_ap*, %struct.wpabuf*)* @wps_er_process_wlanevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_process_wlanevent(%struct.wps_er_ap* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_er_ap*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpabuf, align 4
  %10 = alloca i32, align 4
  store %struct.wps_er_ap* %0, %struct.wps_er_ap** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %11 = load i32, i32* @ETH_ALEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @MSG_MSGDUMP, align 4
  %16 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %17 = call i32 @wpabuf_head(%struct.wpabuf* %16)
  %18 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %19 = call i32 @wpabuf_len(%struct.wpabuf* %18)
  %20 = call i32 @wpa_hexdump(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19)
  %21 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %22 = call i32 @wpabuf_len(%struct.wpabuf* %21)
  %23 = icmp slt i32 %22, 18
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %61

27:                                               ; preds = %2
  %28 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %29 = call i32* @wpabuf_mhead(%struct.wpabuf* %28)
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = call i64 @hwaddr_aton(i8* %35, i32* %14)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %61

41:                                               ; preds = %27
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = getelementptr inbounds i32, i32* %43, i64 17
  %45 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %46 = call i32 @wpabuf_len(%struct.wpabuf* %45)
  %47 = sub nsw i32 %46, 18
  %48 = call i32 @wpabuf_set(%struct.wpabuf* %9, i32* %44, i32 %47)
  %49 = load i32, i32* %6, align 4
  switch i32 %49, label %56 [
    i32 1, label %50
    i32 2, label %53
  ]

50:                                               ; preds = %41
  %51 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %52 = call i32 @wps_er_process_wlanevent_probe_req(%struct.wps_er_ap* %51, i32* %14, %struct.wpabuf* %9)
  br label %60

53:                                               ; preds = %41
  %54 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %55 = call i32 @wps_er_process_wlanevent_eap(%struct.wps_er_ap* %54, i32* %14, %struct.wpabuf* %9)
  br label %60

56:                                               ; preds = %41
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %53, %50
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %60, %38, %24
  %62 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %10, align 4
  switch i32 %63, label %65 [
    i32 0, label %64
    i32 1, label %64
  ]

64:                                               ; preds = %61, %61
  ret void

65:                                               ; preds = %61
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #2

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32* @wpabuf_mhead(%struct.wpabuf*) #2

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i32) #2

declare dso_local i32 @wps_er_process_wlanevent_probe_req(%struct.wps_er_ap*, i32*, %struct.wpabuf*) #2

declare dso_local i32 @wps_er_process_wlanevent_eap(%struct.wps_er_ap*, i32*, %struct.wpabuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
