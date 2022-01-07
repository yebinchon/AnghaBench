; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_mbo_ap.c_mbo_ap_check_sta_assoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_mbo_ap.c_mbo_ap_check_sta_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sta_info = type { i32 }
%struct.ieee802_11_elems = type { i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MBO: Association Request attributes\00", align 1
@MBO_ATTR_ID_CELL_DATA_CAPA = common dso_local global i32 0, align 4
@MBO_ATTR_ID_NON_PREF_CHAN_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbo_ap_check_sta_assoc(%struct.hostapd_data* %0, %struct.sta_info* %1, %struct.ieee802_11_elems* %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.ieee802_11_elems*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store %struct.ieee802_11_elems* %2, %struct.ieee802_11_elems** %6, align 8
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %6, align 8
  %20 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %3
  br label %104

24:                                               ; preds = %18
  %25 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %6, align 8
  %26 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32* %28, i32** %7, align 8
  %29 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %6, align 8
  %30 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %10, align 8
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @wpa_hexdump(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %35, i64 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* @MBO_ATTR_ID_CELL_DATA_CAPA, align 4
  %41 = call i32* @get_ie(i32* %38, i64 %39, i32 %40)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %24
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %44, %24
  %56 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %57 = call i32 @mbo_ap_sta_free(%struct.sta_info* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %9, align 8
  br label %61

61:                                               ; preds = %96, %55
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = ptrtoint i32* %62 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = icmp sgt i64 %67, 1
  br i1 %68, label %69, label %104

69:                                               ; preds = %61
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 2, %73
  %75 = sext i32 %74 to i64
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = icmp sgt i64 %75, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %104

84:                                               ; preds = %69
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MBO_ATTR_ID_NON_PREF_CHAN_REPORT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @mbo_ap_parse_non_pref_chan(%struct.sta_info* %91, i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %84
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 2, %99
  %101 = load i32*, i32** %7, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %7, align 8
  br label %61

104:                                              ; preds = %23, %83, %61
  ret void
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32* @get_ie(i32*, i64, i32) #1

declare dso_local i32 @mbo_ap_sta_free(%struct.sta_info*) #1

declare dso_local i32 @mbo_ap_parse_non_pref_chan(%struct.sta_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
