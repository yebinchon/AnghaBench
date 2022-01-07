; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_decode_potential_peer_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_decode_potential_peer_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_mka_participant = type { i64, i32 }
%struct.ieee802_1x_mka_hdr = type { i32 }
%struct.ieee802_1x_mka_peer_id = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"KaY: MKA Peer Packet Body Length (%zu bytes) should be a multiple of 16 octets\00", align 1
@MKA_HDR_LEN = common dso_local global i32 0, align 4
@MI_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"KaY: Could not update mi\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_1x_mka_participant*, i32*, i64)* @ieee802_1x_mka_decode_potential_peer_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_mka_decode_potential_peer_body(%struct.ieee802_1x_mka_participant* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee802_1x_mka_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ieee802_1x_mka_peer_id*, align 8
  %12 = alloca i64, align 8
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.ieee802_1x_mka_hdr*
  store %struct.ieee802_1x_mka_hdr* %14, %struct.ieee802_1x_mka_hdr** %8, align 8
  %15 = load %struct.ieee802_1x_mka_hdr*, %struct.ieee802_1x_mka_hdr** %8, align 8
  %16 = call i64 @get_mka_param_body_len(%struct.ieee802_1x_mka_hdr* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = urem i64 %17, 16
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @MSG_ERROR, align 4
  %22 = load i64, i64* %9, align 8
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %22)
  store i32 -1, i32* %4, align 4
  br label %67

24:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %63, %24
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @MKA_HDR_LEN, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = bitcast i32* %35 to %struct.ieee802_1x_mka_peer_id*
  store %struct.ieee802_1x_mka_peer_id* %36, %struct.ieee802_1x_mka_peer_id** %11, align 8
  %37 = load %struct.ieee802_1x_mka_peer_id*, %struct.ieee802_1x_mka_peer_id** %11, align 8
  %38 = getelementptr inbounds %struct.ieee802_1x_mka_peer_id, %struct.ieee802_1x_mka_peer_id* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @be_to_host32(i32 %39)
  store i64 %40, i64* %12, align 8
  %41 = load %struct.ieee802_1x_mka_peer_id*, %struct.ieee802_1x_mka_peer_id** %11, align 8
  %42 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %43 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MI_LEN, align 4
  %46 = call i64 @os_memcmp(%struct.ieee802_1x_mka_peer_id* %41, i32 %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %29
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %51 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %56 = call i32 @reset_participant_mi(%struct.ieee802_1x_mka_participant* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %54, %48
  br label %63

62:                                               ; preds = %29
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %10, align 8
  br label %25

66:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @get_mka_param_body_len(%struct.ieee802_1x_mka_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @be_to_host32(i32) #1

declare dso_local i64 @os_memcmp(%struct.ieee802_1x_mka_peer_id*, i32, i32) #1

declare dso_local i32 @reset_participant_mi(%struct.ieee802_1x_mka_participant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
