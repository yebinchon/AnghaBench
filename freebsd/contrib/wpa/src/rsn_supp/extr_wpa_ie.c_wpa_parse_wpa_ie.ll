; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_parse_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_parse_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ie_data = type { i32 }

@WLAN_EID_RSN = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@OSEN_IE_VENDOR_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_parse_wpa_ie(i32* %0, i64 %1, %struct.wpa_ie_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wpa_ie_data*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.wpa_ie_data* %2, %struct.wpa_ie_data** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp uge i64 %8, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @WLAN_EID_RSN, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %7, align 8
  %20 = call i32 @wpa_parse_wpa_ie_rsn(i32* %17, i64 %18, %struct.wpa_ie_data* %19)
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %10, %3
  %22 = load i64, i64* %6, align 8
  %23 = icmp uge i64 %22, 6
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 4
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = call i64 @WPA_GET_BE32(i32* %37)
  %39 = load i64, i64* @OSEN_IE_VENDOR_TYPE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32*, i32** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %7, align 8
  %45 = call i32 @wpa_parse_wpa_ie_rsn(i32* %42, i64 %43, %struct.wpa_ie_data* %44)
  store i32 %45, i32* %4, align 4
  br label %51

46:                                               ; preds = %35, %30, %24, %21
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %7, align 8
  %50 = call i32 @wpa_parse_wpa_ie_wpa(i32* %47, i64 %48, %struct.wpa_ie_data* %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %41, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @wpa_parse_wpa_ie_rsn(i32*, i64, %struct.wpa_ie_data*) #1

declare dso_local i64 @WPA_GET_BE32(i32*) #1

declare dso_local i32 @wpa_parse_wpa_ie_wpa(i32*, i64, %struct.wpa_ie_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
