; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_non_pref_chan_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_non_pref_chan_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpabuf*, i32, i32)* @wpas_mbo_non_pref_chan_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_mbo_non_pref_chan_attr(%struct.wpa_supplicant* %0, %struct.wpabuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sub nsw i32 %10, %11
  %13 = add nsw i32 %12, 3
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = add i64 %15, 2
  %17 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %18 = call i64 @wpabuf_tailroom(%struct.wpabuf* %17)
  %19 = icmp ugt i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %30

21:                                               ; preds = %4
  %22 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @wpas_mbo_non_pref_chan_attr_hdr(%struct.wpabuf* %22, i64 %23)
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %26 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @wpas_mbo_non_pref_chan_attr_body(%struct.wpa_supplicant* %25, %struct.wpabuf* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %20
  ret void
}

declare dso_local i64 @wpabuf_tailroom(%struct.wpabuf*) #1

declare dso_local i32 @wpas_mbo_non_pref_chan_attr_hdr(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpas_mbo_non_pref_chan_attr_body(%struct.wpa_supplicant*, %struct.wpabuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
