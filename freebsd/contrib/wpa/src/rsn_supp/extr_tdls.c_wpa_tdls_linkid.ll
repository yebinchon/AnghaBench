; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_linkid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_linkid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32 }
%struct.wpa_tdls_peer = type { i32, i64 }
%struct.wpa_tdls_lnkid = type { i32, i32, i32, i32, i32 }

@WLAN_EID_LINK_ID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_sm*, %struct.wpa_tdls_peer*, %struct.wpa_tdls_lnkid*)* @wpa_tdls_linkid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_tdls_linkid(%struct.wpa_sm* %0, %struct.wpa_tdls_peer* %1, %struct.wpa_tdls_lnkid* %2) #0 {
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca %struct.wpa_tdls_peer*, align 8
  %6 = alloca %struct.wpa_tdls_lnkid*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store %struct.wpa_tdls_peer* %1, %struct.wpa_tdls_peer** %5, align 8
  store %struct.wpa_tdls_lnkid* %2, %struct.wpa_tdls_lnkid** %6, align 8
  %7 = load i32, i32* @WLAN_EID_LINK_ID, align 4
  %8 = load %struct.wpa_tdls_lnkid*, %struct.wpa_tdls_lnkid** %6, align 8
  %9 = getelementptr inbounds %struct.wpa_tdls_lnkid, %struct.wpa_tdls_lnkid* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = mul nsw i32 3, %10
  %12 = load %struct.wpa_tdls_lnkid*, %struct.wpa_tdls_lnkid** %6, align 8
  %13 = getelementptr inbounds %struct.wpa_tdls_lnkid, %struct.wpa_tdls_lnkid* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.wpa_tdls_lnkid*, %struct.wpa_tdls_lnkid** %6, align 8
  %15 = getelementptr inbounds %struct.wpa_tdls_lnkid, %struct.wpa_tdls_lnkid* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = call i32 @os_memcpy(i32 %16, i32 %19, i32 %20)
  %22 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %23 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %3
  %27 = load %struct.wpa_tdls_lnkid*, %struct.wpa_tdls_lnkid** %6, align 8
  %28 = getelementptr inbounds %struct.wpa_tdls_lnkid, %struct.wpa_tdls_lnkid* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @os_memcpy(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.wpa_tdls_lnkid*, %struct.wpa_tdls_lnkid** %6, align 8
  %36 = getelementptr inbounds %struct.wpa_tdls_lnkid, %struct.wpa_tdls_lnkid* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %39 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @os_memcpy(i32 %37, i32 %40, i32 %41)
  br label %60

43:                                               ; preds = %3
  %44 = load %struct.wpa_tdls_lnkid*, %struct.wpa_tdls_lnkid** %6, align 8
  %45 = getelementptr inbounds %struct.wpa_tdls_lnkid, %struct.wpa_tdls_lnkid* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %48 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @os_memcpy(i32 %46, i32 %49, i32 %50)
  %52 = load %struct.wpa_tdls_lnkid*, %struct.wpa_tdls_lnkid** %6, align 8
  %53 = getelementptr inbounds %struct.wpa_tdls_lnkid, %struct.wpa_tdls_lnkid* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %56 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ETH_ALEN, align 4
  %59 = call i32 @os_memcpy(i32 %54, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %43, %26
  ret void
}

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
