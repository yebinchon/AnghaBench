; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hs20.c_hs20_send_wnm_notification_deauth_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hs20.c_hs20_send_wnm_notification_deauth_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type opaque

@WLAN_ACTION_WNM = common dso_local global i32 0, align 4
@WNM_NOTIFICATION_REQ = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@OUI_WFA = common dso_local global i32 0, align 4
@HS20_WNM_DEAUTH_IMMINENT_NOTICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hs20_send_wnm_notification_deauth_req(%struct.hostapd_data* %0, i32* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %10 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %11 = call i32 @wpabuf_len(%struct.wpabuf* %10)
  %12 = add nsw i32 10, %11
  %13 = call %struct.wpabuf* @wpabuf_alloc(i32 %12)
  store %struct.wpabuf* %13, %struct.wpabuf** %8, align 8
  %14 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %15 = icmp eq %struct.wpabuf* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %60

17:                                               ; preds = %3
  %18 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %19 = load i32, i32* @WLAN_ACTION_WNM, align 4
  %20 = call i32 @wpabuf_put_u8(%struct.wpabuf* %18, i32 %19)
  %21 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %22 = load i32, i32* @WNM_NOTIFICATION_REQ, align 4
  %23 = call i32 @wpabuf_put_u8(%struct.wpabuf* %21, i32 %22)
  %24 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %25 = call i32 @wpabuf_put_u8(%struct.wpabuf* %24, i32 1)
  %26 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %27 = call i32 @wpabuf_put_u8(%struct.wpabuf* %26, i32 1)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %29 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %30 = call i32 @wpabuf_put_u8(%struct.wpabuf* %28, i32 %29)
  %31 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %32 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %33 = call i32 @wpabuf_len(%struct.wpabuf* %32)
  %34 = add nsw i32 4, %33
  %35 = call i32 @wpabuf_put_u8(%struct.wpabuf* %31, i32 %34)
  %36 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %37 = load i32, i32* @OUI_WFA, align 4
  %38 = call i32 @wpabuf_put_be24(%struct.wpabuf* %36, i32 %37)
  %39 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %40 = load i32, i32* @HS20_WNM_DEAUTH_IMMINENT_NOTICE, align 4
  %41 = call i32 @wpabuf_put_u8(%struct.wpabuf* %39, i32 %40)
  %42 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %44 = call i32 @wpabuf_put_buf(%struct.wpabuf* %42, %struct.wpabuf* %43)
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %47 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %53 = call i32 @wpabuf_head(%struct.wpabuf* %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %55 = call i32 @wpabuf_len(%struct.wpabuf* %54)
  %56 = call i32 @hostapd_drv_send_action(%struct.hostapd_data* %45, i32 %50, i32 0, i32* %51, i32 %53, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %58 = call i32 @wpabuf_free(%struct.wpabuf* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %17, %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be24(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @hostapd_drv_send_action(%struct.hostapd_data*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
