; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_offchannel.c_offchannel_send_action_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_offchannel.c_offchannel_send_action_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, i64, i64, i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [160 x i8] c"Off-channel: Action frame sequence done notification: pending_action_tx=%p drv_offchan_tx=%d action_tx_wait_time=%d off_channel_freq=%d roc_waiting_drv_freq=%d\00", align 1
@WPA_DRIVER_FLAGS_OFFCHANNEL_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @offchannel_send_action_done(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %3 = load i32, i32* @MSG_DEBUG, align 4
  %4 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %5 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %4, i32 0, i32 5
  %6 = load i32*, i32** %5, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @WPA_DRIVER_FLAGS_OFFCHANNEL_TX, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @wpa_printf(i32 %3, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str, i64 0, i64 0), i32* %6, i32 %15, i64 %18, i64 %21, i64 %24)
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @wpabuf_free(i32* %28)
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 5
  store i32* null, i32** %31, align 8
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @WPA_DRIVER_FLAGS_OFFCHANNEL_TX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %1
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %38
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %50 = call i32 @wpa_drv_send_action_cancel_wait(%struct.wpa_supplicant* %49)
  br label %69

51:                                               ; preds = %43, %1
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %53 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56, %51
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %63 = call i32 @wpa_drv_cancel_remain_on_channel(%struct.wpa_supplicant* %62)
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %67 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %56
  br label %69

69:                                               ; preds = %68, %48
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %71 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32*, i32, i64, i64, i64) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @wpa_drv_send_action_cancel_wait(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_drv_cancel_remain_on_channel(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
