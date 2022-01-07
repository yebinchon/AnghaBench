; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_send_4_of_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_send_4_of_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_eapol_key = type { i32*, i32*, i32*, i32 }
%struct.wpa_ptk = type { i32 }

@IEEE802_1X_TYPE_EAPOL_KEY = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@WPA_PROTO_OSEN = common dso_local global i64 0, align 8
@EAPOL_KEY_TYPE_RSN = common dso_local global i32 0, align 4
@EAPOL_KEY_TYPE_WPA = common dso_local global i32 0, align 4
@WPA_KEY_INFO_SECURE = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_TYPE = common dso_local global i32 0, align 4
@WPA_KEY_INFO_MIC = common dso_local global i32 0, align 4
@WPA_KEY_INFO_ENCR_KEY_DATA = common dso_local global i32 0, align 4
@WPA_REPLAY_COUNTER_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WPA: Sending EAPOL-Key 4/4\00", align 1
@ETH_P_EAPOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_send_4_of_4(%struct.wpa_sm* %0, i8* %1, %struct.wpa_eapol_key* %2, i32 %3, i32 %4, %struct.wpa_ptk* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_sm*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_eapol_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpa_ptk*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.wpa_eapol_key*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.wpa_eapol_key* %2, %struct.wpa_eapol_key** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.wpa_ptk* %5, %struct.wpa_ptk** %13, align 8
  %20 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %21 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %24 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @wpa_mic_len(i32 %22, i32 %25)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = add i64 32, %27
  %29 = add i64 %28, 2
  store i64 %29, i64* %15, align 8
  %30 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %31 = load i32, i32* @IEEE802_1X_TYPE_EAPOL_KEY, align 4
  %32 = load i64, i64* %15, align 8
  %33 = bitcast %struct.wpa_eapol_key** %17 to i8*
  %34 = call i32* @wpa_sm_alloc_eapol(%struct.wpa_sm* %30, i32 %31, i32* null, i64 %32, i64* %16, i8* %33)
  store i32* %34, i32** %18, align 8
  %35 = load i32*, i32** %18, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %138

38:                                               ; preds = %6
  %39 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %40 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WPA_PROTO_RSN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %46 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @WPA_PROTO_OSEN, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44, %38
  %51 = load i32, i32* @EAPOL_KEY_TYPE_RSN, align 4
  br label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @EAPOL_KEY_TYPE_WPA, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %17, align 8
  %57 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @WPA_KEY_INFO_SECURE, align 4
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @WPA_KEY_INFO_KEY_TYPE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load i64, i64* %14, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %70 = load i32, i32* %12, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %12, align 4
  br label %76

72:                                               ; preds = %54
  %73 = load i32, i32* @WPA_KEY_INFO_ENCR_KEY_DATA, align 4
  %74 = load i32, i32* %12, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %17, align 8
  %78 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @WPA_PUT_BE16(i32* %79, i32 %80)
  %82 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %83 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @WPA_PROTO_RSN, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %76
  %88 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %89 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @WPA_PROTO_OSEN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87, %76
  %94 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %17, align 8
  %95 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @WPA_PUT_BE16(i32* %96, i32 0)
  br label %106

98:                                               ; preds = %87
  %99 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %17, align 8
  %100 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %103 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @os_memcpy(i32* %101, i32* %104, i32 2)
  br label %106

106:                                              ; preds = %98, %93
  %107 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %17, align 8
  %108 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %111 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %114 = call i32 @os_memcpy(i32* %109, i32* %112, i32 %113)
  %115 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %17, align 8
  %116 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %115, i64 1
  %117 = bitcast %struct.wpa_eapol_key* %116 to i32*
  store i32* %117, i32** %19, align 8
  %118 = load i32*, i32** %19, align 8
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = call i32 @WPA_PUT_BE16(i32* %120, i32 0)
  %122 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %123 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = call i32 @wpa_dbg(i32 %126, i32 %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %129 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %130 = load %struct.wpa_ptk*, %struct.wpa_ptk** %13, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i8*, i8** %9, align 8
  %133 = load i32, i32* @ETH_P_EAPOL, align 4
  %134 = load i32*, i32** %18, align 8
  %135 = load i64, i64* %16, align 8
  %136 = load i32*, i32** %19, align 8
  %137 = call i32 @wpa_eapol_key_send(%struct.wpa_sm* %129, %struct.wpa_ptk* %130, i32 %131, i8* %132, i32 %133, i32* %134, i64 %135, i32* %136)
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %106, %37
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i64 @wpa_mic_len(i32, i32) #1

declare dso_local i32* @wpa_sm_alloc_eapol(%struct.wpa_sm*, i32, i32*, i64, i64*, i8*) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wpa_dbg(i32, i32, i8*) #1

declare dso_local i32 @wpa_eapol_key_send(%struct.wpa_sm*, %struct.wpa_ptk*, i32, i8*, i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
