; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_get_vendor_ie_multi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_get_vendor_ie_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wpa_bss = type { i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wpa_bss_get_vendor_ie_multi(%struct.wpa_bss* %0, i64 %1) #0 {
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
  br label %92

16:                                               ; preds = %2
  %17 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %17, i64 1
  %19 = bitcast %struct.wpa_bss* %18 to i32*
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %22 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32* %25, i32** %7, align 8
  br label %26

26:                                               ; preds = %75, %16
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = ptrtoint i32* %27 to i64
  %30 = ptrtoint i32* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  %33 = icmp sgt i64 %32, 1
  br i1 %33, label %34, label %83

34:                                               ; preds = %26
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 2, %37
  %39 = sext i32 %38 to i64
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = icmp sgt i64 %39, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %83

48:                                               ; preds = %34
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 4
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load i64, i64* %5, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = call i64 @WPA_GET_BE32(i32* %62)
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 4
  %74 = call i32 @wpabuf_put_data(%struct.wpabuf* %66, i32* %69, i32 %73)
  br label %75

75:                                               ; preds = %65, %59, %54, %48
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 2, %78
  %80 = load i32*, i32** %8, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %8, align 8
  br label %26

83:                                               ; preds = %47, %26
  %84 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %85 = call i64 @wpabuf_len(%struct.wpabuf* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %89 = call i32 @wpabuf_free(%struct.wpabuf* %88)
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %90

90:                                               ; preds = %87, %83
  %91 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %91, %struct.wpabuf** %3, align 8
  br label %92

92:                                               ; preds = %90, %15
  %93 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %93
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
