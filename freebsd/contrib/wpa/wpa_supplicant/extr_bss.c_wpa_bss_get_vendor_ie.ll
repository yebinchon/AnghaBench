; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_get_vendor_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_get_vendor_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss = type { i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpa_bss_get_vendor_ie(%struct.wpa_bss* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpa_bss*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.wpa_bss* %0, %struct.wpa_bss** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %8, i64 1
  %10 = bitcast %struct.wpa_bss* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  store i32* %16, i32** %6, align 8
  br label %17

17:                                               ; preds = %58, %2
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = ptrtoint i32* %18 to i64
  %21 = ptrtoint i32* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 4
  %24 = icmp sgt i64 %23, 1
  br i1 %24, label %25, label %66

25:                                               ; preds = %17
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 2, %28
  %30 = sext i32 %29 to i64
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = ptrtoint i32* %31 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  %37 = icmp sgt i64 %30, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %66

39:                                               ; preds = %25
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 4
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i64, i64* %5, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = call i64 @WPA_GET_BE32(i32* %53)
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32*, i32** %7, align 8
  store i32* %57, i32** %3, align 8
  br label %67

58:                                               ; preds = %50, %45, %39
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 2, %61
  %63 = load i32*, i32** %7, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %7, align 8
  br label %17

66:                                               ; preds = %38, %17
  store i32* null, i32** %3, align 8
  br label %67

67:                                               ; preds = %66, %56
  %68 = load i32*, i32** %3, align 8
  ret i32* %68
}

declare dso_local i64 @WPA_GET_BE32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
