; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_send_wnm_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_send_wnm_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }

@WPA_COMPLETED = common dso_local global i64 0, align 8
@MBO_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@WLAN_ACTION_WNM = common dso_local global i32 0, align 4
@WNM_NOTIFICATION_REQ = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Failed to send WNM-Notification Request frame with non-preferred channel list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32*, i64)* @wpas_mbo_send_wnm_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_mbo_send_wnm_notification(%struct.wpa_supplicant* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WPA_COMPLETED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %3
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MBO_IE_VENDOR_TYPE, align 4
  %24 = call i32 @wpa_bss_get_vendor_ie(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19, %14, %3
  br label %94

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  %29 = add i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call %struct.wpabuf* @wpabuf_alloc(i32 %30)
  store %struct.wpabuf* %31, %struct.wpabuf** %7, align 8
  %32 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %33 = icmp ne %struct.wpabuf* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %94

35:                                               ; preds = %27
  %36 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %37 = load i32, i32* @WLAN_ACTION_WNM, align 4
  %38 = call i32 @wpabuf_put_u8(%struct.wpabuf* %36, i32 %37)
  %39 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %40 = load i32, i32* @WNM_NOTIFICATION_REQ, align 4
  %41 = call i32 @wpabuf_put_u8(%struct.wpabuf* %39, i32 %40)
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %35
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %35
  %56 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @wpabuf_put_u8(%struct.wpabuf* %56, i32 %59)
  %61 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %62 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %63 = call i32 @wpabuf_put_u8(%struct.wpabuf* %61, i32 %62)
  %64 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @wpabuf_put_data(%struct.wpabuf* %64, i32* %65, i64 %66)
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %70 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %73 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %76 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %82 = call i32 @wpabuf_head(%struct.wpabuf* %81)
  %83 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %84 = call i32 @wpabuf_len(%struct.wpabuf* %83)
  %85 = call i32 @wpa_drv_send_action(%struct.wpa_supplicant* %68, i32 %71, i32 0, i32 %74, i32 %77, i32 %80, i32 %82, i32 %84, i32 0)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %55
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 @wpa_printf(i32 %89, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %55
  %92 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %93 = call i32 @wpabuf_free(%struct.wpabuf* %92)
  br label %94

94:                                               ; preds = %91, %34, %26
  ret void
}

declare dso_local i32 @wpa_bss_get_vendor_ie(i32, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

declare dso_local i32 @wpa_drv_send_action(%struct.wpa_supplicant*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
