; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_send_2_of_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_send_2_of_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i64, %struct.TYPE_2__*, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_eapol_key = type { i32*, i32*, i32*, i32*, i32 }
%struct.wpa_ptk = type { i32 }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WPA: No wpa_ie set - cannot generate msg 2/4\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"WPA: WPA IE for msg 2/4\00", align 1
@IEEE802_1X_TYPE_EAPOL_KEY = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@WPA_PROTO_OSEN = common dso_local global i64 0, align 8
@EAPOL_KEY_TYPE_RSN = common dso_local global i32 0, align 4
@EAPOL_KEY_TYPE_WPA = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_TYPE = common dso_local global i32 0, align 4
@WPA_KEY_INFO_MIC = common dso_local global i64 0, align 8
@WPA_KEY_INFO_ENCR_KEY_DATA = common dso_local global i64 0, align 8
@WPA_REPLAY_COUNTER_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"WPA: Replay Counter\00", align 1
@WPA_NONCE_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"WPA: Sending EAPOL-Key 2/4\00", align 1
@ETH_P_EAPOL = common dso_local global i32 0, align 4
@PMKID_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_send_2_of_4(%struct.wpa_sm* %0, i8* %1, %struct.wpa_eapol_key* %2, i32 %3, i32* %4, i32* %5, i64 %6, %struct.wpa_ptk* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_sm*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wpa_eapol_key*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.wpa_ptk*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.wpa_eapol_key*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %10, align 8
  store i8* %1, i8** %11, align 8
  store %struct.wpa_eapol_key* %2, %struct.wpa_eapol_key** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store %struct.wpa_ptk* %7, %struct.wpa_ptk** %17, align 8
  store i32* null, i32** %24, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %8
  %29 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %30 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MSG_WARNING, align 4
  %35 = call i32 @wpa_msg(i32 %33, i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %181

36:                                               ; preds = %8
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = load i64, i64* %16, align 8
  %40 = call i32 @wpa_hexdump(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %38, i64 %39)
  %41 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %42 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %45 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @wpa_mic_len(i32 %43, i32 %46)
  store i64 %47, i64* %18, align 8
  %48 = load i64, i64* %18, align 8
  %49 = add i64 40, %48
  %50 = add i64 %49, 2
  store i64 %50, i64* %19, align 8
  %51 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %52 = load i32, i32* @IEEE802_1X_TYPE_EAPOL_KEY, align 4
  %53 = load i64, i64* %19, align 8
  %54 = load i64, i64* %16, align 8
  %55 = add i64 %53, %54
  %56 = bitcast %struct.wpa_eapol_key** %21 to i8*
  %57 = call i32* @wpa_sm_alloc_eapol(%struct.wpa_sm* %51, i32 %52, i32* null, i64 %55, i64* %20, i8* %56)
  store i32* %57, i32** %22, align 8
  %58 = load i32*, i32** %22, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %36
  %61 = load i32*, i32** %24, align 8
  %62 = call i32 @os_free(i32* %61)
  store i32 -1, i32* %9, align 4
  br label %181

63:                                               ; preds = %36
  %64 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %65 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @WPA_PROTO_RSN, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %71 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @WPA_PROTO_OSEN, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69, %63
  %76 = load i32, i32* @EAPOL_KEY_TYPE_RSN, align 4
  br label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @EAPOL_KEY_TYPE_WPA, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %21, align 8
  %82 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @WPA_KEY_INFO_KEY_TYPE, align 4
  %85 = or i32 %83, %84
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %25, align 8
  %87 = load i64, i64* %18, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load i64, i64* @WPA_KEY_INFO_MIC, align 8
  %91 = load i64, i64* %25, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %25, align 8
  br label %97

93:                                               ; preds = %79
  %94 = load i64, i64* @WPA_KEY_INFO_ENCR_KEY_DATA, align 8
  %95 = load i64, i64* %25, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %25, align 8
  br label %97

97:                                               ; preds = %93, %89
  %98 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %21, align 8
  %99 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %25, align 8
  %102 = call i32 @WPA_PUT_BE16(i32* %100, i64 %101)
  %103 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %104 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @WPA_PROTO_RSN, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %97
  %109 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %110 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @WPA_PROTO_OSEN, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %108, %97
  %115 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %21, align 8
  %116 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @WPA_PUT_BE16(i32* %117, i64 0)
  br label %127

119:                                              ; preds = %108
  %120 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %21, align 8
  %121 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %12, align 8
  %124 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @os_memcpy(i32* %122, i32* %125, i64 2)
  br label %127

127:                                              ; preds = %119, %114
  %128 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %21, align 8
  %129 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %12, align 8
  %132 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @WPA_REPLAY_COUNTER_LEN, align 8
  %135 = call i32 @os_memcpy(i32* %130, i32* %133, i64 %134)
  %136 = load i32, i32* @MSG_DEBUG, align 4
  %137 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %21, align 8
  %138 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @WPA_REPLAY_COUNTER_LEN, align 8
  %141 = call i32 @wpa_hexdump(i32 %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %139, i64 %140)
  %142 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %21, align 8
  %143 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %142, i64 1
  %144 = bitcast %struct.wpa_eapol_key* %143 to i32*
  store i32* %144, i32** %23, align 8
  %145 = load i32*, i32** %23, align 8
  %146 = load i64, i64* %18, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i64, i64* %16, align 8
  %149 = call i32 @WPA_PUT_BE16(i32* %147, i64 %148)
  %150 = load i32*, i32** %23, align 8
  %151 = load i64, i64* %18, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32*, i32** %15, align 8
  %155 = load i64, i64* %16, align 8
  %156 = call i32 @os_memcpy(i32* %153, i32* %154, i64 %155)
  %157 = load i32*, i32** %24, align 8
  %158 = call i32 @os_free(i32* %157)
  %159 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %21, align 8
  %160 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32*, i32** %14, align 8
  %163 = load i64, i64* @WPA_NONCE_LEN, align 8
  %164 = call i32 @os_memcpy(i32* %161, i32* %162, i64 %163)
  %165 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %166 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %165, i32 0, i32 2
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @MSG_DEBUG, align 4
  %171 = call i32 @wpa_dbg(i32 %169, i32 %170, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %172 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %173 = load %struct.wpa_ptk*, %struct.wpa_ptk** %17, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load i8*, i8** %11, align 8
  %176 = load i32, i32* @ETH_P_EAPOL, align 4
  %177 = load i32*, i32** %22, align 8
  %178 = load i64, i64* %20, align 8
  %179 = load i32*, i32** %23, align 8
  %180 = call i32 @wpa_eapol_key_send(%struct.wpa_sm* %172, %struct.wpa_ptk* %173, i32 %174, i8* %175, i32 %176, i32* %177, i64 %178, i32* %179)
  store i32 %180, i32* %9, align 4
  br label %181

181:                                              ; preds = %127, %60, %28
  %182 = load i32, i32* %9, align 4
  ret i32 %182
}

declare dso_local i32 @wpa_msg(i32, i32, i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i64 @wpa_mic_len(i32, i32) #1

declare dso_local i32* @wpa_sm_alloc_eapol(%struct.wpa_sm*, i32, i32*, i64, i64*, i8*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @wpa_dbg(i32, i32, i8*) #1

declare dso_local i32 @wpa_eapol_key_send(%struct.wpa_sm*, %struct.wpa_ptk*, i32, i8*, i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
