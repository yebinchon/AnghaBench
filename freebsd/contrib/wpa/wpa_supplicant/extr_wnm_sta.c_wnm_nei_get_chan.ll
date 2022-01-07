; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_nei_get_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_nei_get_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wpa_bss* }
%struct.wpa_bss = type { i32 }

@WLAN_EID_COUNTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32, i32)* @wnm_nei_get_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wnm_nei_get_chan(%struct.wpa_supplicant* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_bss*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 0
  %13 = load %struct.wpa_bss*, %struct.wpa_bss** %12, align 8
  store %struct.wpa_bss* %13, %struct.wpa_bss** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %15 = icmp ne %struct.wpa_bss* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %18 = load i32, i32* @WLAN_EID_COUNTRY, align 4
  %19 = call i32* @wpa_bss_get_ie(%struct.wpa_bss* %17, i32 %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %8, align 8
  br label %31

31:                                               ; preds = %27, %22, %16
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ieee80211_chan_to_freq(i8* %33, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 1
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp sle i32 %46, 13
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 %49, 5
  %51 = add nsw i32 2407, %50
  store i32 %51, i32* %9, align 4
  br label %68

52:                                               ; preds = %45, %42
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 14
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 2484, i32* %9, align 4
  br label %67

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = icmp sge i32 %57, 36
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %60, 169
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 %63, 5
  %65 = add nsw i32 5000, %64
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %59, %56
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67, %48
  br label %69

69:                                               ; preds = %68, %39, %32
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32* @wpa_bss_get_ie(%struct.wpa_bss*, i32) #1

declare dso_local i32 @ieee80211_chan_to_freq(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
