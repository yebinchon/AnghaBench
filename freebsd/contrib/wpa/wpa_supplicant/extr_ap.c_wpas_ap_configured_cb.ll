; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ap.c_wpas_ap_configured_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ap.c_wpas_ap_configured_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32 (i32, i32)*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"AP interface setup completed - state %s\00", align 1
@HAPD_IFACE_DISABLED = common dso_local global i64 0, align 8
@WPA_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wpas_ap_configured_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_ap_configured_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wpa_supplicant*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %5, %struct.wpa_supplicant** %3, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @hostapd_state_text(i64 %11)
  %13 = call i32 @wpa_printf(i32 %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HAPD_IFACE_DISABLED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %23 = call i32 @wpa_supplicant_ap_deinit(%struct.wpa_supplicant* %22)
  br label %43

24:                                               ; preds = %1
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %26 = load i32, i32* @WPA_COMPLETED, align 4
  %27 = call i32 @wpa_supplicant_set_state(%struct.wpa_supplicant* %25, i32 %26)
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 2
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = icmp ne i32 (i32, i32)* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 2
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %35(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %21, %32, %24
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @hostapd_state_text(i64) #1

declare dso_local i32 @wpa_supplicant_ap_deinit(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_set_state(%struct.wpa_supplicant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
