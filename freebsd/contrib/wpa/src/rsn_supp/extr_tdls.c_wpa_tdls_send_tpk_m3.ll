; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_send_tpk_m3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_send_tpk_m3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32 }
%struct.wpa_tdls_lnkid = type { i32 }
%struct.wpa_tdls_peer = type { i32, i64, i64, i64, i32, %struct.TYPE_2__, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_tdls_ftie = type { i32, i32*, i32, i32, i32 }
%struct.wpa_tdls_timeoutie = type { i32 }

@WLAN_EID_FAST_BSS_TRANSITION = common dso_local global i32 0, align 4
@WPA_NONCE_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TDLS: TPK lifetime %u seconds\00", align 1
@TDLS_PEER_VHT = common dso_local global i32 0, align 4
@TDLS_PEER_HT = common dso_local global i32 0, align 4
@TDLS_PEER_WMM = common dso_local global i32 0, align 4
@WLAN_TDLS_SETUP_CONFIRM = common dso_local global i32 0, align 4
@TDLS_TESTING_LONG_FRAME = common dso_local global i32 0, align 4
@TDLS_TESTING_WRONG_LIFETIME_CONF = common dso_local global i32 0, align 4
@TDLS_TESTING_WRONG_MIC = common dso_local global i32 0, align 4
@tdls_testing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, i8*, i32, %struct.wpa_tdls_lnkid*, %struct.wpa_tdls_peer*)* @wpa_tdls_send_tpk_m3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_tdls_send_tpk_m3(%struct.wpa_sm* %0, i8* %1, i32 %2, %struct.wpa_tdls_lnkid* %3, %struct.wpa_tdls_peer* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_sm*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_tdls_lnkid*, align 8
  %11 = alloca %struct.wpa_tdls_peer*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.wpa_tdls_ftie*, align 8
  %16 = alloca %struct.wpa_tdls_timeoutie, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.wpa_tdls_lnkid* %3, %struct.wpa_tdls_lnkid** %10, align 8
  store %struct.wpa_tdls_peer* %4, %struct.wpa_tdls_peer** %11, align 8
  store i32 0, i32* %19, align 4
  store i64 0, i64* %14, align 8
  %20 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %21 = call i64 @wpa_tdls_get_privacy(%struct.wpa_sm* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %5
  %24 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %25 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %24, i32 0, i32 10
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 32
  %28 = add i64 %27, 4
  %29 = load i64, i64* %14, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %14, align 8
  br label %31

31:                                               ; preds = %23, %5
  %32 = load i64, i64* %14, align 8
  %33 = add i64 %32, 1
  %34 = call i32* @os_zalloc(i64 %33)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %153

38:                                               ; preds = %31
  %39 = load i32*, i32** %12, align 8
  store i32* %39, i32** %13, align 8
  %40 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %41 = call i64 @wpa_tdls_get_privacy(%struct.wpa_sm* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %105

44:                                               ; preds = %38
  %45 = load i32*, i32** %13, align 8
  %46 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %47 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %50 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = call i32* @wpa_add_ie(i32* %45, i32 %48, i32 %51)
  store i32* %52, i32** %13, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = bitcast i32* %53 to %struct.wpa_tdls_ftie*
  store %struct.wpa_tdls_ftie* %54, %struct.wpa_tdls_ftie** %15, align 8
  %55 = load i32, i32* @WLAN_EID_FAST_BSS_TRANSITION, align 4
  %56 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %15, align 8
  %57 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %15, align 8
  %59 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %62 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @WPA_NONCE_LEN, align 4
  %65 = call i32 @os_memcpy(i32 %60, i32 %63, i32 %64)
  %66 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %15, align 8
  %67 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %70 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @WPA_NONCE_LEN, align 4
  %73 = call i32 @os_memcpy(i32 %68, i32 %71, i32 %72)
  %74 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %15, align 8
  %75 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %74, i32 0, i32 0
  store i32 30, i32* %75, align 8
  %76 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %15, align 8
  %77 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %76, i64 1
  %78 = bitcast %struct.wpa_tdls_ftie* %77 to i32*
  store i32* %78, i32** %13, align 8
  %79 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %80 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %17, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = bitcast %struct.wpa_tdls_timeoutie* %16 to i32*
  %84 = load i32, i32* %17, align 4
  %85 = call i32* @wpa_add_tdls_timeoutie(i32* %82, i32* %83, i32 4, i32 %84)
  store i32* %85, i32** %13, align 8
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = load i32, i32* %17, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %90 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.wpa_tdls_lnkid*, %struct.wpa_tdls_lnkid** %10, align 8
  %94 = bitcast %struct.wpa_tdls_lnkid* %93 to i32*
  %95 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %96 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = bitcast %struct.wpa_tdls_timeoutie* %16 to i32*
  %99 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %15, align 8
  %100 = bitcast %struct.wpa_tdls_ftie* %99 to i32*
  %101 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %15, align 8
  %102 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @wpa_tdls_ftie_mic(i32 %92, i32 3, i32* %94, i32 %97, i32* %98, i32* %100, i32* %103)
  br label %105

105:                                              ; preds = %44, %43
  %106 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %107 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @TDLS_PEER_VHT, align 4
  %112 = load i32, i32* %19, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %110, %105
  %115 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %116 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @TDLS_PEER_HT, align 4
  %121 = load i32, i32* %19, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %19, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %125 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @TDLS_PEER_WMM, align 4
  %130 = load i32, i32* %19, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %19, align 4
  br label %132

132:                                              ; preds = %128, %123
  %133 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* @WLAN_TDLS_SETUP_CONFIRM, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %19, align 4
  %138 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %139 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = load i32*, i32** %12, align 8
  %144 = ptrtoint i32* %142 to i64
  %145 = ptrtoint i32* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 4
  %148 = trunc i64 %147 to i32
  %149 = call i32 @wpa_tdls_tpk_send(%struct.wpa_sm* %133, i8* %134, i32 %135, i32 %136, i32 0, i32 %137, i32 %140, i32* %141, i32 %148)
  store i32 %149, i32* %18, align 4
  %150 = load i32*, i32** %12, align 8
  %151 = call i32 @os_free(i32* %150)
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %132, %37
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i64 @wpa_tdls_get_privacy(%struct.wpa_sm*) #1

declare dso_local i32* @os_zalloc(i64) #1

declare dso_local i32* @wpa_add_ie(i32*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32* @wpa_add_tdls_timeoutie(i32*, i32*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_tdls_ftie_mic(i32, i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @wpa_tdls_tpk_send(%struct.wpa_sm*, i8*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
