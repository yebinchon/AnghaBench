; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_eapol_key_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_eapol_key_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_eapol_key = type { i32*, i32*, i32*, i32*, i32*, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"  EAPOL-Key type=%d\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"  key_info 0x%x (ver=%d keyidx=%d rsvd=%d %s%s%s%s%s%s%s%s)\00", align 1
@WPA_KEY_INFO_TYPE_MASK = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_INDEX_MASK = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_INDEX_SHIFT = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Pairwise\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@WPA_KEY_INFO_INSTALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c" Install\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WPA_KEY_INFO_ACK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c" Ack\00", align 1
@WPA_KEY_INFO_MIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c" MIC\00", align 1
@WPA_KEY_INFO_SECURE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c" Secure\00", align 1
@WPA_KEY_INFO_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c" Error\00", align 1
@WPA_KEY_INFO_REQUEST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c" Request\00", align 1
@WPA_KEY_INFO_ENCR_KEY_DATA = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c" Encr\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"  key_length=%u key_data_length=%u\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"  replay_counter\00", align 1
@WPA_REPLAY_COUNTER_LEN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"  key_nonce\00", align 1
@WPA_NONCE_LEN = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"  key_iv\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"  key_rsc\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"  key_id (reserved)\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"  key_mic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_sm*, %struct.wpa_eapol_key*, i32, i32*, i32)* @wpa_eapol_key_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_eapol_key_dump(%struct.wpa_sm* %0, %struct.wpa_eapol_key* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.wpa_sm*, align 8
  %7 = alloca %struct.wpa_eapol_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %6, align 8
  store %struct.wpa_eapol_key* %1, %struct.wpa_eapol_key** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %13 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @WPA_GET_BE16(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %17 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %23 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i32, i8*, i32, ...) @wpa_dbg(i32 %20, i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %27 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @WPA_KEY_INFO_TYPE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @WPA_KEY_INFO_KEY_INDEX_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @WPA_KEY_INFO_KEY_INDEX_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @BIT(i32 13)
  %43 = call i32 @BIT(i32 14)
  %44 = or i32 %42, %43
  %45 = call i32 @BIT(i32 15)
  %46 = or i32 %44, %45
  %47 = and i32 %41, %46
  %48 = ashr i32 %47, 13
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @WPA_KEY_INFO_KEY_TYPE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @WPA_KEY_INFO_INSTALL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @WPA_KEY_INFO_ACK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @WPA_KEY_INFO_SECURE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @WPA_KEY_INFO_ERROR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @WPA_KEY_INFO_REQUEST, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @WPA_KEY_INFO_ENCR_KEY_DATA, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %97 = call i32 (i32, i32, i8*, i32, ...) @wpa_dbg(i32 %30, i32 %31, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35, i32 %40, i32 %48, i8* %54, i8* %60, i8* %66, i8* %72, i8* %78, i8* %84, i8* %90, i8* %96)
  %98 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %99 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %105 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @WPA_GET_BE16(i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (i32, i32, i8*, i32, ...) @wpa_dbg(i32 %102, i32 %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %112 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %115 = call i32 @wpa_hexdump(i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32* %113, i32 %114)
  %116 = load i32, i32* @MSG_DEBUG, align 4
  %117 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %118 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* @WPA_NONCE_LEN, align 4
  %121 = call i32 @wpa_hexdump(i32 %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32* %119, i32 %120)
  %122 = load i32, i32* @MSG_DEBUG, align 4
  %123 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %124 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @wpa_hexdump(i32 %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32* %125, i32 16)
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %129 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @wpa_hexdump(i32 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32* %130, i32 8)
  %132 = load i32, i32* @MSG_DEBUG, align 4
  %133 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %134 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @wpa_hexdump(i32 %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32* %135, i32 8)
  %137 = load i32, i32* @MSG_DEBUG, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @wpa_hexdump(i32 %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32* %138, i32 %139)
  ret void
}

declare dso_local i32 @WPA_GET_BE16(i32) #1

declare dso_local i32 @wpa_dbg(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
