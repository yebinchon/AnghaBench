; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_get_vendor_ie_multi_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_get_vendor_ie_multi_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wpa_bss = type { i32, i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wpa_bss_get_vendor_ie_multi_beacon(%struct.wpa_bss* %0, i64 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wpa_bss*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.wpa_bss* %0, %struct.wpa_bss** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.wpabuf* @wpabuf_alloc(i32 %11)
  store %struct.wpabuf* %12, %struct.wpabuf** %6, align 8
  %13 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %14 = icmp eq %struct.wpabuf* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %98

16:                                               ; preds = %2
  %17 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %17, i64 1
  %19 = bitcast %struct.wpa_bss* %18 to i32*
  store i32* %19, i32** %8, align 8
  %20 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  store i32* %31, i32** %7, align 8
  br label %32

32:                                               ; preds = %81, %16
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = ptrtoint i32* %33 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = icmp sgt i64 %38, 1
  br i1 %39, label %40, label %89

40:                                               ; preds = %32
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 2, %43
  %45 = sext i32 %44 to i64
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = icmp sgt i64 %45, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %89

54:                                               ; preds = %40
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %54
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 4
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load i64, i64* %5, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = call i64 @WPA_GET_BE32(i32* %68)
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 4
  %80 = call i32 @wpabuf_put_data(%struct.wpabuf* %72, i32* %75, i32 %79)
  br label %81

81:                                               ; preds = %71, %65, %60, %54
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 2, %84
  %86 = load i32*, i32** %8, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %8, align 8
  br label %32

89:                                               ; preds = %53, %32
  %90 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %91 = call i64 @wpabuf_len(%struct.wpabuf* %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %95 = call i32 @wpabuf_free(%struct.wpabuf* %94)
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %96

96:                                               ; preds = %93, %89
  %97 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %97, %struct.wpabuf** %3, align 8
  br label %98

98:                                               ; preds = %96, %15
  %99 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %99
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @WPA_GET_BE32(i32*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i32) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
