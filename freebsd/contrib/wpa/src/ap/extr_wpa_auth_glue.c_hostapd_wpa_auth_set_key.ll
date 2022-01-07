; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, i32, i64, i32, i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@WPA_ALG_BIP_CMAC_256 = common dso_local global i32 0, align 4
@WPA_ALG_BIP_GMAC_128 = common dso_local global i32 0, align 4
@WPA_ALG_BIP_GMAC_256 = common dso_local global i32 0, align 4
@WPA_ALG_IGTK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*, i32, i32*, i64)* @hostapd_wpa_auth_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_wpa_auth_set_key(i8* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.hostapd_data*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.hostapd_data*
  store %struct.hostapd_data* %19, %struct.hostapd_data** %16, align 8
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %16, align 8
  %21 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %20, i32 0, i32 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %17, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %7
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %16, align 8
  %29 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %28, i32 0, i32 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i8* @hostapd_get_vlan_id_ifname(i32 %32, i32 %33)
  store i8* %34, i8** %17, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 -1, i32* %8, align 4
  br label %48

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %7
  %40 = load i8*, i8** %17, align 8
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %16, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = load i64, i64* %15, align 8
  %47 = call i32 @hostapd_drv_set_key(i8* %40, %struct.hostapd_data* %41, i32 %42, i32* %43, i32 %44, i32 1, i32* null, i32 0, i32* %45, i64 %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %39, %37
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i8* @hostapd_get_vlan_id_ifname(i32, i32) #1

declare dso_local i32 @hostapd_drv_set_key(i8*, %struct.hostapd_data*, i32, i32*, i32, i32, i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
