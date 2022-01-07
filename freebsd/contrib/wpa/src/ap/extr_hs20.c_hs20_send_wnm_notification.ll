; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hs20.c_hs20_send_wnm_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hs20.c_hs20_send_wnm_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"HS 2.0: Too long URL for WNM-Notification: '%s'\00", align 1
@WLAN_ACTION_WNM = common dso_local global i64 0, align 8
@WNM_NOTIFICATION_REQ = common dso_local global i64 0, align 8
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@OUI_WFA = common dso_local global i32 0, align 4
@HS20_WNM_SUB_REM_NEEDED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hs20_send_wnm_notification(%struct.hostapd_data* %0, i64* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %11, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @os_strlen(i8* %16)
  %18 = add nsw i32 1, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = add i64 5, %20
  %22 = icmp ugt i64 %21, 255
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 -1, i32* %5, align 4
  br label %94

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %4
  %29 = load i64, i64* %11, align 8
  %30 = add i64 11, %29
  %31 = trunc i64 %30 to i32
  %32 = call %struct.wpabuf* @wpabuf_alloc(i32 %31)
  store %struct.wpabuf* %32, %struct.wpabuf** %10, align 8
  %33 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %34 = icmp eq %struct.wpabuf* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %94

36:                                               ; preds = %28
  %37 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %38 = load i64, i64* @WLAN_ACTION_WNM, align 8
  %39 = call i32 @wpabuf_put_u8(%struct.wpabuf* %37, i64 %38)
  %40 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %41 = load i64, i64* @WNM_NOTIFICATION_REQ, align 8
  %42 = call i32 @wpabuf_put_u8(%struct.wpabuf* %40, i64 %41)
  %43 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %44 = call i32 @wpabuf_put_u8(%struct.wpabuf* %43, i64 1)
  %45 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %46 = call i32 @wpabuf_put_u8(%struct.wpabuf* %45, i64 1)
  %47 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %48 = load i64, i64* @WLAN_EID_VENDOR_SPECIFIC, align 8
  %49 = call i32 @wpabuf_put_u8(%struct.wpabuf* %47, i64 %48)
  %50 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add i64 5, %51
  %53 = call i32 @wpabuf_put_u8(%struct.wpabuf* %50, i64 %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %55 = load i32, i32* @OUI_WFA, align 4
  %56 = call i32 @wpabuf_put_be24(%struct.wpabuf* %54, i32 %55)
  %57 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %58 = load i64, i64* @HS20_WNM_SUB_REM_NEEDED, align 8
  %59 = call i32 @wpabuf_put_u8(%struct.wpabuf* %57, i64 %58)
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %36
  %63 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 %64, 1
  %66 = call i32 @wpabuf_put_u8(%struct.wpabuf* %63, i64 %65)
  %67 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i64, i64* %11, align 8
  %70 = sub i64 %69, 1
  %71 = call i32 @wpabuf_put_data(%struct.wpabuf* %67, i8* %68, i64 %70)
  %72 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @wpabuf_put_u8(%struct.wpabuf* %72, i64 %73)
  br label %78

75:                                               ; preds = %36
  %76 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %77 = call i32 @wpabuf_put_u8(%struct.wpabuf* %76, i64 0)
  br label %78

78:                                               ; preds = %75, %62
  %79 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %80 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %81 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64*, i64** %7, align 8
  %86 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %87 = call i32 @wpabuf_head(%struct.wpabuf* %86)
  %88 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %89 = call i32 @wpabuf_len(%struct.wpabuf* %88)
  %90 = call i32 @hostapd_drv_send_action(%struct.hostapd_data* %79, i32 %84, i32 0, i64* %85, i32 %87, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %92 = call i32 @wpabuf_free(%struct.wpabuf* %91)
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %78, %35, %23
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_be24(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i64) #1

declare dso_local i32 @hostapd_drv_send_action(%struct.hostapd_data*, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
