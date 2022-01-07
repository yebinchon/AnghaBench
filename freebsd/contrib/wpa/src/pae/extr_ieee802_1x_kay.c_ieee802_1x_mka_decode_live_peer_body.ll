; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_decode_live_peer_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_decode_live_peer_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_mka_participant = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee802_1x_mka_hdr = type { i32 }
%struct.ieee802_1x_kay_peer = type { i64 }
%struct.ieee802_1x_mka_peer_id = type { i32, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"KaY: MKA Peer Packet Body Length (%zu bytes) should be a multiple of 16 octets\00", align 1
@MKA_HDR_LEN = common dso_local global i32 0, align 4
@MI_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"KaY: Could not update mi\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_1x_mka_participant*, i32*, i64)* @ieee802_1x_mka_decode_live_peer_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_mka_decode_live_peer_body(%struct.ieee802_1x_mka_participant* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee802_1x_mka_hdr*, align 8
  %9 = alloca %struct.ieee802_1x_kay_peer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee802_1x_mka_peer_id*, align 8
  %14 = alloca i64, align 8
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %16 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %17 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ieee802_1x_kay_is_in_live_peer(%struct.ieee802_1x_mka_participant* %15, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32* %21 to %struct.ieee802_1x_mka_hdr*
  store %struct.ieee802_1x_mka_hdr* %22, %struct.ieee802_1x_mka_hdr** %8, align 8
  %23 = load %struct.ieee802_1x_mka_hdr*, %struct.ieee802_1x_mka_hdr** %8, align 8
  %24 = call i64 @get_mka_param_body_len(%struct.ieee802_1x_mka_hdr* %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = urem i64 %25, 16
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @MSG_ERROR, align 4
  %30 = load i64, i64* %10, align 8
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %30)
  store i32 -1, i32* %4, align 4
  br label %101

32:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %97, %32
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %100

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @MKA_HDR_LEN, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = bitcast i32* %43 to %struct.ieee802_1x_mka_peer_id*
  store %struct.ieee802_1x_mka_peer_id* %44, %struct.ieee802_1x_mka_peer_id** %13, align 8
  %45 = load %struct.ieee802_1x_mka_peer_id*, %struct.ieee802_1x_mka_peer_id** %13, align 8
  %46 = getelementptr inbounds %struct.ieee802_1x_mka_peer_id, %struct.ieee802_1x_mka_peer_id* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @be_to_host32(i32 %47)
  store i64 %48, i64* %14, align 8
  %49 = load %struct.ieee802_1x_mka_peer_id*, %struct.ieee802_1x_mka_peer_id** %13, align 8
  %50 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %51 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MI_LEN, align 4
  %54 = call i64 @os_memcmp(%struct.ieee802_1x_mka_peer_id* %49, i32 %52, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %37
  %57 = load i64, i64* %14, align 8
  %58 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %59 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %64 = call i32 @reset_participant_mi(%struct.ieee802_1x_mka_participant* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %62, %56
  br label %97

70:                                               ; preds = %37
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %97

74:                                               ; preds = %70
  %75 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %76 = load %struct.ieee802_1x_mka_peer_id*, %struct.ieee802_1x_mka_peer_id** %13, align 8
  %77 = getelementptr inbounds %struct.ieee802_1x_mka_peer_id, %struct.ieee802_1x_mka_peer_id* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_peer(%struct.ieee802_1x_mka_participant* %75, i32 %78)
  store %struct.ieee802_1x_kay_peer* %79, %struct.ieee802_1x_kay_peer** %9, align 8
  %80 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %9, align 8
  %81 = icmp ne %struct.ieee802_1x_kay_peer* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i64, i64* %14, align 8
  %84 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %9, align 8
  %85 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %96

86:                                               ; preds = %74
  %87 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %88 = load %struct.ieee802_1x_mka_peer_id*, %struct.ieee802_1x_mka_peer_id** %13, align 8
  %89 = getelementptr inbounds %struct.ieee802_1x_mka_peer_id, %struct.ieee802_1x_mka_peer_id* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %14, align 8
  %92 = call i32 @ieee802_1x_kay_create_potential_peer(%struct.ieee802_1x_mka_participant* %87, i32 %90, i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  store i32 -1, i32* %4, align 4
  br label %101

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %82
  br label %97

97:                                               ; preds = %96, %73, %69
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, 8
  store i64 %99, i64* %11, align 8
  br label %33

100:                                              ; preds = %33
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %94, %28
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @ieee802_1x_kay_is_in_live_peer(%struct.ieee802_1x_mka_participant*, i32) #1

declare dso_local i64 @get_mka_param_body_len(%struct.ieee802_1x_mka_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @be_to_host32(i32) #1

declare dso_local i64 @os_memcmp(%struct.ieee802_1x_mka_peer_id*, i32, i32) #1

declare dso_local i32 @reset_participant_mi(%struct.ieee802_1x_mka_participant*) #1

declare dso_local %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_peer(%struct.ieee802_1x_mka_participant*, i32) #1

declare dso_local i32 @ieee802_1x_kay_create_potential_peer(%struct.ieee802_1x_mka_participant*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
