; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_check_valid_he_mcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_check_valid_he_mcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_he_capabilities = type { i64 }

@HE_NSS_MAX_STREAMS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"No matching HE MCS found between AP TX and STA RX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i32*, i32)* @check_valid_he_mcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_valid_he_mcs(%struct.hostapd_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %101

22:                                               ; preds = %3
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %24 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = bitcast i32* %36 to %struct.ieee80211_he_capabilities*
  %38 = getelementptr inbounds %struct.ieee80211_he_capabilities, %struct.ieee80211_he_capabilities* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %12, align 8
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %42 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %50 [
    i32 128, label %48
    i32 129, label %49
  ]

48:                                               ; preds = %22
  store i32 3, i32* %10, align 4
  br label %51

49:                                               ; preds = %22
  store i32 2, i32* %10, align 4
  br label %51

50:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %51

51:                                               ; preds = %50, %49, %48
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %95, %51
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %52
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = mul nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = call i32 @WPA_GET_LE16(i32* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %13, align 4
  %65 = mul nsw i32 %64, 2
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = call i32 @WPA_GET_LE16(i32* %68)
  store i32 %69, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %91, %56
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @HE_NSS_MAX_STREAMS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %14, align 4
  %77 = mul nsw i32 %76, 2
  %78 = ashr i32 %75, %77
  %79 = and i32 %78, 3
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %91

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %14, align 4
  %85 = mul nsw i32 %84, 2
  %86 = ashr i32 %83, %85
  %87 = and i32 %86, 3
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %91

90:                                               ; preds = %82
  store i32 1, i32* %4, align 4
  br label %101

91:                                               ; preds = %89, %81
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %70

94:                                               ; preds = %70
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %52

98:                                               ; preds = %52
  %99 = load i32, i32* @MSG_DEBUG, align 4
  %100 = call i32 @wpa_printf(i32 %99, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %98, %90, %21
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @WPA_GET_LE16(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
