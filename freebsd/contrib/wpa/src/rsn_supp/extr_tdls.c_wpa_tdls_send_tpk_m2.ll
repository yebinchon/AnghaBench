; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_send_tpk_m2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_send_tpk_m2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32 }
%struct.wpa_tdls_lnkid = type { i32 }
%struct.wpa_tdls_peer = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_tdls_timeoutie = type { i32 }
%struct.wpa_tdls_ftie = type { i32, i32*, i32, i32, i32 }

@WLAN_EID_FAST_BSS_TRANSITION = common dso_local global i32 0, align 4
@WPA_NONCE_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TDLS: FTIE for TPK M2\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"TDLS: TPK lifetime %u seconds from initiator\00", align 1
@WLAN_TDLS_SETUP_RESPONSE = common dso_local global i32 0, align 4
@TDLS_TESTING_LONG_FRAME = common dso_local global i32 0, align 4
@TDLS_TESTING_WRONG_LIFETIME_RESP = common dso_local global i32 0, align 4
@TDLS_TESTING_WRONG_MIC = common dso_local global i32 0, align 4
@tdls_testing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, i8*, i32, %struct.wpa_tdls_lnkid*, %struct.wpa_tdls_peer*)* @wpa_tdls_send_tpk_m2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_tdls_send_tpk_m2(%struct.wpa_sm* %0, i8* %1, i32 %2, %struct.wpa_tdls_lnkid* %3, %struct.wpa_tdls_peer* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_sm*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_tdls_lnkid*, align 8
  %11 = alloca %struct.wpa_tdls_peer*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.wpa_tdls_timeoutie, align 4
  %17 = alloca %struct.wpa_tdls_ftie*, align 8
  %18 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.wpa_tdls_lnkid* %3, %struct.wpa_tdls_lnkid** %10, align 8
  store %struct.wpa_tdls_peer* %4, %struct.wpa_tdls_peer** %11, align 8
  store i64 0, i64* %14, align 8
  %19 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %20 = call i64 @wpa_tdls_get_privacy(%struct.wpa_sm* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %24 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 32
  %27 = add i64 %26, 4
  %28 = load i64, i64* %14, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %14, align 8
  br label %30

30:                                               ; preds = %22, %5
  %31 = load i64, i64* %14, align 8
  %32 = add i64 %31, 1
  %33 = call i32* @os_zalloc(i64 %32)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  br label %128

37:                                               ; preds = %30
  %38 = load i32*, i32** %12, align 8
  store i32* %38, i32** %13, align 8
  %39 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %40 = call i64 @wpa_tdls_get_privacy(%struct.wpa_sm* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %108

43:                                               ; preds = %37
  %44 = load i32*, i32** %13, align 8
  %45 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %46 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %49 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32* @wpa_add_ie(i32* %44, i32 %47, i32 %50)
  store i32* %51, i32** %13, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = bitcast i32* %52 to %struct.wpa_tdls_ftie*
  store %struct.wpa_tdls_ftie* %53, %struct.wpa_tdls_ftie** %17, align 8
  %54 = load i32, i32* @WLAN_EID_FAST_BSS_TRANSITION, align 4
  %55 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %17, align 8
  %56 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %17, align 8
  %58 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %61 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @WPA_NONCE_LEN, align 4
  %64 = call i32 @os_memcpy(i32 %59, i32 %62, i32 %63)
  %65 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %17, align 8
  %66 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %69 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @WPA_NONCE_LEN, align 4
  %72 = call i32 @os_memcpy(i32 %67, i32 %70, i32 %71)
  %73 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %17, align 8
  %74 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %73, i32 0, i32 0
  store i32 30, i32* %74, align 8
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %17, align 8
  %77 = bitcast %struct.wpa_tdls_ftie* %76 to i32*
  %78 = call i32 @wpa_hexdump(i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %77, i32 32)
  %79 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %17, align 8
  %80 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %79, i64 1
  %81 = bitcast %struct.wpa_tdls_ftie* %80 to i32*
  store i32* %81, i32** %13, align 8
  %82 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %83 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %15, align 4
  %85 = load i32*, i32** %13, align 8
  %86 = bitcast %struct.wpa_tdls_timeoutie* %16 to i32*
  %87 = load i32, i32* %15, align 4
  %88 = call i32* @wpa_add_tdls_timeoutie(i32* %85, i32* %86, i32 4, i32 %87)
  store i32* %88, i32** %13, align 8
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %93 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.wpa_tdls_lnkid*, %struct.wpa_tdls_lnkid** %10, align 8
  %97 = bitcast %struct.wpa_tdls_lnkid* %96 to i32*
  %98 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %99 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = bitcast %struct.wpa_tdls_timeoutie* %16 to i32*
  %102 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %17, align 8
  %103 = bitcast %struct.wpa_tdls_ftie* %102 to i32*
  %104 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %17, align 8
  %105 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @wpa_tdls_ftie_mic(i32 %95, i32 2, i32* %97, i32 %100, i32* %101, i32* %103, i32* %106)
  br label %108

108:                                              ; preds = %43, %42
  %109 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* @WLAN_TDLS_SETUP_RESPONSE, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %11, align 8
  %114 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = ptrtoint i32* %117 to i64
  %120 = ptrtoint i32* %118 to i64
  %121 = sub i64 %119, %120
  %122 = sdiv exact i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i32 @wpa_tdls_tpk_send(%struct.wpa_sm* %109, i8* %110, i32 %111, i32 %112, i32 0, i32 0, i32 %115, i32* %116, i32 %123)
  store i32 %124, i32* %18, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @os_free(i32* %125)
  %127 = load i32, i32* %18, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %108, %36
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i64 @wpa_tdls_get_privacy(%struct.wpa_sm*) #1

declare dso_local i32* @os_zalloc(i64) #1

declare dso_local i32* @wpa_add_ie(i32*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

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
