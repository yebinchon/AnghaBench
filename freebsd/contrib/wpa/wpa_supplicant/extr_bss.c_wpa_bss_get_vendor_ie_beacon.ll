; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_get_vendor_ie_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_get_vendor_ie_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss = type { i64, i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpa_bss_get_vendor_ie_beacon(%struct.wpa_bss* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpa_bss*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.wpa_bss* %0, %struct.wpa_bss** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %78

13:                                               ; preds = %2
  %14 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %14, i64 1
  %16 = bitcast %struct.wpa_bss* %15 to i32*
  store i32* %16, i32** %7, align 8
  %17 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %25 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32* %27, i32** %6, align 8
  br label %28

28:                                               ; preds = %69, %13
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = ptrtoint i32* %29 to i64
  %32 = ptrtoint i32* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  %35 = icmp sgt i64 %34, 1
  br i1 %35, label %36, label %77

36:                                               ; preds = %28
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 2, %39
  %41 = sext i32 %40 to i64
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = ptrtoint i32* %42 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = icmp sgt i64 %41, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %77

50:                                               ; preds = %36
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 4
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i64, i64* %5, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = call i64 @WPA_GET_BE32(i32* %64)
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32*, i32** %7, align 8
  store i32* %68, i32** %3, align 8
  br label %78

69:                                               ; preds = %61, %56, %50
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 2, %72
  %74 = load i32*, i32** %7, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %7, align 8
  br label %28

77:                                               ; preds = %49, %28
  store i32* null, i32** %3, align 8
  br label %78

78:                                               ; preds = %77, %67, %12
  %79 = load i32*, i32** %3, align 8
  ret i32* %79
}

declare dso_local i64 @WPA_GET_BE32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
