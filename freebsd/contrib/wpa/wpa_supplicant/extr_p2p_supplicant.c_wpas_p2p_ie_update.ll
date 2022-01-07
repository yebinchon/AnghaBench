; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_ie_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_ie_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wpa_supplicant = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hostapd_data** }
%struct.hostapd_data = type { %struct.wpabuf*, %struct.wpabuf*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@P2P_GROUP_OWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wpabuf*, %struct.wpabuf*)* @wpas_p2p_ie_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_ie_update(i8* %0, %struct.wpabuf* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca %struct.hostapd_data*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %10, %struct.wpa_supplicant** %7, align 8
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %55

15:                                               ; preds = %3
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.hostapd_data**, %struct.hostapd_data*** %19, align 8
  %21 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %20, i64 0
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %21, align 8
  store %struct.hostapd_data* %22, %struct.hostapd_data** %8, align 8
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %24 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @P2P_GROUP_OWNER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %15
  %32 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %33 = call i32 @wpabuf_free(%struct.wpabuf* %32)
  %34 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %35 = call i32 @wpabuf_free(%struct.wpabuf* %34)
  br label %63

36:                                               ; preds = %15
  %37 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %38 = icmp ne %struct.wpabuf* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %41 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %40, i32 0, i32 1
  %42 = load %struct.wpabuf*, %struct.wpabuf** %41, align 8
  %43 = call i32 @wpabuf_free(%struct.wpabuf* %42)
  %44 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %46 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %45, i32 0, i32 1
  store %struct.wpabuf* %44, %struct.wpabuf** %46, align 8
  br label %47

47:                                               ; preds = %39, %36
  %48 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %49 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %48, i32 0, i32 0
  %50 = load %struct.wpabuf*, %struct.wpabuf** %49, align 8
  %51 = call i32 @wpabuf_free(%struct.wpabuf* %50)
  %52 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %53 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %54 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %53, i32 0, i32 0
  store %struct.wpabuf* %52, %struct.wpabuf** %54, align 8
  br label %60

55:                                               ; preds = %3
  %56 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %57 = call i32 @wpabuf_free(%struct.wpabuf* %56)
  %58 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %59 = call i32 @wpabuf_free(%struct.wpabuf* %58)
  br label %60

60:                                               ; preds = %55, %47
  %61 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %62 = call i32 @wpa_supplicant_ap_update_beacon(%struct.wpa_supplicant* %61)
  br label %63

63:                                               ; preds = %60, %31
  ret void
}

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa_supplicant_ap_update_beacon(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
