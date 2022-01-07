; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_get_bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_get_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i64 }

@pae_group_addr = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@OID_802_11_BSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @wpa_driver_ndis_get_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_ndis_get_bssid(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpa_driver_ndis_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.wpa_driver_ndis_data*
  store %struct.wpa_driver_ndis_data* %8, %struct.wpa_driver_ndis_data** %6, align 8
  %9 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %6, align 8
  %10 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @pae_group_addr, align 4
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = call i32 @os_memcpy(i32* %14, i32 %15, i32 %16)
  store i32 0, i32* %3, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %6, align 8
  %20 = load i32, i32* @OID_802_11_BSSID, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i64 @ndis_get_oid(%struct.wpa_driver_ndis_data* %19, i32 %20, i8* %22, i32 %23)
  %25 = icmp slt i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 -1, i32 0
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %18, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i64 @ndis_get_oid(%struct.wpa_driver_ndis_data*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
