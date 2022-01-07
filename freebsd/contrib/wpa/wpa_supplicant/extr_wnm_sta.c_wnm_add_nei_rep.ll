; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_add_nei_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_add_nei_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@IEEE80211_MAX_MMPDU_SIZE = common dso_local global i64 0, align 8
@IEEE80211_HDRLEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"WNM: No room in frame for Neighbor Report element\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"WNM: Failed to allocate memory for Neighbor Report element\00", align 1
@WLAN_EID_NEIGHBOR_REPORT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WNM_NEIGHBOR_BSS_TRANSITION_CANDIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf**, i32*, i32, i32, i32, i32, i32)* @wnm_add_nei_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wnm_add_nei_rep(%struct.wpabuf** %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpabuf**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wpabuf** %0, %struct.wpabuf*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %18 = call i64 @wpabuf_len(%struct.wpabuf* %17)
  %19 = add nsw i64 %18, 18
  %20 = load i64, i64* @IEEE80211_MAX_MMPDU_SIZE, align 8
  %21 = load i64, i64* @IEEE80211_HDRLEN, align 8
  %22 = sub nsw i64 %20, %21
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %74

27:                                               ; preds = %7
  %28 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %29 = call i64 @wpabuf_resize(%struct.wpabuf** %28, i32 18)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %74

34:                                               ; preds = %27
  %35 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %36 = load %struct.wpabuf*, %struct.wpabuf** %35, align 8
  %37 = load i32, i32* @WLAN_EID_NEIGHBOR_REPORT, align 4
  %38 = call i32 @wpabuf_put_u8(%struct.wpabuf* %36, i32 %37)
  %39 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %40 = load %struct.wpabuf*, %struct.wpabuf** %39, align 8
  %41 = call i32 @wpabuf_put_u8(%struct.wpabuf* %40, i32 16)
  %42 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %42, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = call i32 @wpabuf_put_data(%struct.wpabuf* %43, i32* %44, i32 %45)
  %47 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %48 = load %struct.wpabuf*, %struct.wpabuf** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @wpabuf_put_le32(%struct.wpabuf* %48, i32 %49)
  %51 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %52 = load %struct.wpabuf*, %struct.wpabuf** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @wpabuf_put_u8(%struct.wpabuf* %52, i32 %53)
  %55 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %56 = load %struct.wpabuf*, %struct.wpabuf** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @wpabuf_put_u8(%struct.wpabuf* %56, i32 %57)
  %59 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %60 = load %struct.wpabuf*, %struct.wpabuf** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @wpabuf_put_u8(%struct.wpabuf* %60, i32 %61)
  %63 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %64 = load %struct.wpabuf*, %struct.wpabuf** %63, align 8
  %65 = load i32, i32* @WNM_NEIGHBOR_BSS_TRANSITION_CANDIDATE, align 4
  %66 = call i32 @wpabuf_put_u8(%struct.wpabuf* %64, i32 %65)
  %67 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %68 = load %struct.wpabuf*, %struct.wpabuf** %67, align 8
  %69 = call i32 @wpabuf_put_u8(%struct.wpabuf* %68, i32 1)
  %70 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %71 = load %struct.wpabuf*, %struct.wpabuf** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @wpabuf_put_u8(%struct.wpabuf* %71, i32 %72)
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %34, %31, %24
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wpabuf_resize(%struct.wpabuf**, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @wpabuf_put_le32(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
