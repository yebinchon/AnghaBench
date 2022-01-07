; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hs20.c_hs20_send_wnm_notification_t_c.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hs20.c_hs20_send_wnm_notification_t_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"HS 2.0: No T&C Server URL available\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"HS 2.0: Too long T&C Server URL for WNM-Notification: '%s'\00", align 1
@WLAN_ACTION_WNM = common dso_local global i64 0, align 8
@WNM_NOTIFICATION_REQ = common dso_local global i64 0, align 8
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@OUI_WFA = common dso_local global i32 0, align 4
@HS20_WNM_T_C_ACCEPTANCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hs20_send_wnm_notification_t_c(%struct.hostapd_data* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @MSG_INFO, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %79

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @os_strlen(i8* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 5, %19
  %21 = icmp ugt i64 %20, 255
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @MSG_INFO, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 -1, i32* %4, align 4
  br label %79

26:                                               ; preds = %16
  %27 = load i64, i64* %10, align 8
  %28 = add i64 11, %27
  %29 = trunc i64 %28 to i32
  %30 = call %struct.wpabuf* @wpabuf_alloc(i32 %29)
  store %struct.wpabuf* %30, %struct.wpabuf** %8, align 8
  %31 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %32 = icmp ne %struct.wpabuf* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %79

34:                                               ; preds = %26
  %35 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %36 = load i64, i64* @WLAN_ACTION_WNM, align 8
  %37 = call i32 @wpabuf_put_u8(%struct.wpabuf* %35, i64 %36)
  %38 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %39 = load i64, i64* @WNM_NOTIFICATION_REQ, align 8
  %40 = call i32 @wpabuf_put_u8(%struct.wpabuf* %38, i64 %39)
  %41 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %42 = call i32 @wpabuf_put_u8(%struct.wpabuf* %41, i64 1)
  %43 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %44 = call i32 @wpabuf_put_u8(%struct.wpabuf* %43, i64 1)
  %45 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %46 = load i64, i64* @WLAN_EID_VENDOR_SPECIFIC, align 8
  %47 = call i32 @wpabuf_put_u8(%struct.wpabuf* %45, i64 %46)
  %48 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add i64 5, %49
  %51 = call i32 @wpabuf_put_u8(%struct.wpabuf* %48, i64 %50)
  %52 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %53 = load i32, i32* @OUI_WFA, align 4
  %54 = call i32 @wpabuf_put_be24(%struct.wpabuf* %52, i32 %53)
  %55 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %56 = load i64, i64* @HS20_WNM_T_C_ACCEPTANCE, align 8
  %57 = call i32 @wpabuf_put_u8(%struct.wpabuf* %55, i64 %56)
  %58 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @wpabuf_put_u8(%struct.wpabuf* %58, i64 %59)
  %61 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @wpabuf_put_str(%struct.wpabuf* %61, i8* %62)
  %64 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %65 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %66 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %72 = call i32 @wpabuf_head(%struct.wpabuf* %71)
  %73 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %74 = call i32 @wpabuf_len(%struct.wpabuf* %73)
  %75 = call i32 @hostapd_drv_send_action(%struct.hostapd_data* %64, i32 %69, i32 0, i32* %70, i32 %72, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %77 = call i32 @wpabuf_free(%struct.wpabuf* %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %34, %33, %22, %13
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_be24(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @hostapd_drv_send_action(%struct.hostapd_data*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
