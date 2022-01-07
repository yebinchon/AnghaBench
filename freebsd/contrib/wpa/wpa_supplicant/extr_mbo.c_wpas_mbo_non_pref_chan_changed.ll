; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_non_pref_chan_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_non_pref_chan_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @wpas_mbo_non_pref_chan_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_mbo_non_pref_chan_changed(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %4 = call %struct.wpabuf* @wpabuf_alloc(i32 512)
  store %struct.wpabuf* %4, %struct.wpabuf** %3, align 8
  %5 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %6 = icmp ne %struct.wpabuf* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %22

8:                                                ; preds = %1
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %10 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %11 = call i32 @wpas_mbo_non_pref_chan_attrs(%struct.wpa_supplicant* %9, %struct.wpabuf* %10, i32 1)
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %13 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %14 = call i32 @wpabuf_head_u8(%struct.wpabuf* %13)
  %15 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %16 = call i32 @wpabuf_len(%struct.wpabuf* %15)
  %17 = call i32 @wpas_mbo_send_wnm_notification(%struct.wpa_supplicant* %12, i32 %14, i32 %16)
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %19 = call i32 @wpas_update_mbo_connect_params(%struct.wpa_supplicant* %18)
  %20 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %21 = call i32 @wpabuf_free(%struct.wpabuf* %20)
  br label %22

22:                                               ; preds = %8, %7
  ret void
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpas_mbo_non_pref_chan_attrs(%struct.wpa_supplicant*, %struct.wpabuf*, i32) #1

declare dso_local i32 @wpas_mbo_send_wnm_notification(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpas_update_mbo_connect_params(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
