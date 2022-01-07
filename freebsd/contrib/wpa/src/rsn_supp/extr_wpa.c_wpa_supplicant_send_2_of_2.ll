; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_send_2_of_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_send_2_of_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_eapol_key = type { i32*, i32*, i32*, i32 }

@IEEE802_1X_TYPE_EAPOL_KEY = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@WPA_PROTO_OSEN = common dso_local global i64 0, align 8
@EAPOL_KEY_TYPE_RSN = common dso_local global i32 0, align 4
@EAPOL_KEY_TYPE_WPA = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_INDEX_MASK = common dso_local global i32 0, align 4
@WPA_KEY_INFO_SECURE = common dso_local global i32 0, align 4
@WPA_KEY_INFO_MIC = common dso_local global i32 0, align 4
@WPA_KEY_INFO_ENCR_KEY_DATA = common dso_local global i32 0, align 4
@WPA_REPLAY_COUNTER_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WPA: Sending EAPOL-Key 2/2\00", align 1
@ETH_P_EAPOL = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@OCV_OCI_KDE_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, %struct.wpa_eapol_key*, i32, i32)* @wpa_supplicant_send_2_of_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_send_2_of_2(%struct.wpa_sm* %0, %struct.wpa_eapol_key* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_sm*, align 8
  %7 = alloca %struct.wpa_eapol_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.wpa_eapol_key*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %6, align 8
  store %struct.wpa_eapol_key* %1, %struct.wpa_eapol_key** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %18 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %21 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @wpa_mic_len(i32 %19, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add i64 32, %24
  %26 = add i64 %25, 2
  store i64 %26, i64* %11, align 8
  %27 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %28 = load i32, i32* @IEEE802_1X_TYPE_EAPOL_KEY, align 4
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %16, align 8
  %31 = add i64 %29, %30
  %32 = bitcast %struct.wpa_eapol_key** %13 to i8*
  %33 = call i32* @wpa_sm_alloc_eapol(%struct.wpa_sm* %27, i32 %28, i32* null, i64 %31, i64* %12, i8* %32)
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %142

37:                                               ; preds = %4
  %38 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %39 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @WPA_PROTO_RSN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %45 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @WPA_PROTO_OSEN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @EAPOL_KEY_TYPE_RSN, align 4
  br label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @EAPOL_KEY_TYPE_WPA, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %56 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @WPA_KEY_INFO_KEY_INDEX_MASK, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @WPA_KEY_INFO_SECURE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %75

71:                                               ; preds = %53
  %72 = load i32, i32* @WPA_KEY_INFO_ENCR_KEY_DATA, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %77 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = call i32 @WPA_PUT_BE16(i32* %78, i64 %80)
  %82 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %83 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @WPA_PROTO_RSN, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %75
  %88 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %89 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @WPA_PROTO_OSEN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87, %75
  %94 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %95 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @WPA_PUT_BE16(i32* %96, i64 0)
  br label %106

98:                                               ; preds = %87
  %99 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %100 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %103 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @os_memcpy(i32* %101, i32* %104, i32 2)
  br label %106

106:                                              ; preds = %98, %93
  %107 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %108 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %111 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %114 = call i32 @os_memcpy(i32* %109, i32* %112, i32 %113)
  %115 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %116 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %115, i64 1
  %117 = bitcast %struct.wpa_eapol_key* %116 to i32*
  store i32* %117, i32** %15, align 8
  %118 = load i32*, i32** %15, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i64, i64* %16, align 8
  %122 = call i32 @WPA_PUT_BE16(i32* %120, i64 %121)
  %123 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %124 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %123, i32 0, i32 3
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = call i32 @wpa_dbg(i32 %127, i32 %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %130 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %131 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %132 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %131, i32 0, i32 2
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %135 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ETH_P_EAPOL, align 4
  %138 = load i32*, i32** %14, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 @wpa_eapol_key_send(%struct.wpa_sm* %130, i32* %132, i32 %133, i32 %136, i32 %137, i32* %138, i64 %139, i32* %140)
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %106, %36
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i64 @wpa_mic_len(i32, i32) #1

declare dso_local i32* @wpa_sm_alloc_eapol(%struct.wpa_sm*, i32, i32*, i64, i64*, i8*) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wpa_dbg(i32, i32, i8*) #1

declare dso_local i32 @wpa_eapol_key_send(%struct.wpa_sm*, i32*, i32, i32, i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
