; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_hs20_get_pps_mo_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_hs20_get_pps_mo_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_cred* }
%struct.wpa_cred = type { i32, %struct.wpa_cred* }
%struct.wpa_ssid = type { i32, %struct.wpa_cred* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hs20_get_pps_mo_id(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.wpa_cred*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  %7 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %8 = icmp eq %struct.wpa_ssid* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

10:                                               ; preds = %2
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %12 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %17 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %3, align 4
  br label %50

19:                                               ; preds = %10
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %20, i32 0, i32 1
  %22 = load %struct.wpa_cred*, %struct.wpa_cred** %21, align 8
  %23 = icmp eq %struct.wpa_cred* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %50

25:                                               ; preds = %19
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.wpa_cred*, %struct.wpa_cred** %29, align 8
  store %struct.wpa_cred* %30, %struct.wpa_cred** %6, align 8
  br label %31

31:                                               ; preds = %45, %25
  %32 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %33 = icmp ne %struct.wpa_cred* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %36 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %35, i32 0, i32 1
  %37 = load %struct.wpa_cred*, %struct.wpa_cred** %36, align 8
  %38 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %39 = icmp eq %struct.wpa_cred* %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %42 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %47 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %46, i32 0, i32 1
  %48 = load %struct.wpa_cred*, %struct.wpa_cred** %47, align 8
  store %struct.wpa_cred* %48, %struct.wpa_cred** %6, align 8
  br label %31

49:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %40, %24, %15, %9
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
