; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_prov_disc_resp_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_prov_disc_resp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.wpa_ssid = type { i64 }

@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@P2P_MAX_INITIAL_CONN_WAIT_GO_REINVOKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @wpas_prov_disc_resp_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_prov_disc_resp_cb(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %8, %struct.wpa_supplicant** %4, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

16:                                               ; preds = %1
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = call i64 @wpas_p2p_get_go_group(%struct.wpa_supplicant* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %58

34:                                               ; preds = %16
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = call %struct.wpa_ssid* @wpas_p2p_get_persistent_go(%struct.wpa_supplicant* %35)
  store %struct.wpa_ssid* %36, %struct.wpa_ssid** %5, align 8
  %37 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %38 = icmp ne %struct.wpa_ssid* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %41 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %42 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %43 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @P2P_MAX_INITIAL_CONN_WAIT_GO_REINVOKE, align 4
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = call i32 @wpas_p2p_group_add_persistent(%struct.wpa_supplicant* %40, %struct.wpa_ssid* %41, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null, i32 %51, i32 0)
  br label %57

53:                                               ; preds = %34
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @wpas_p2p_group_add(%struct.wpa_supplicant* %54, i32 1, i32 %55, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %57

57:                                               ; preds = %53, %50
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %33, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @wpas_p2p_get_go_group(%struct.wpa_supplicant*) #1

declare dso_local %struct.wpa_ssid* @wpas_p2p_get_persistent_go(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_p2p_group_add_persistent(%struct.wpa_supplicant*, %struct.wpa_ssid*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @wpas_p2p_group_add(%struct.wpa_supplicant*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
