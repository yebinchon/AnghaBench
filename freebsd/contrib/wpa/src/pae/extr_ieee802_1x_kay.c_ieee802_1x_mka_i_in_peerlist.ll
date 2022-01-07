; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_i_in_peerlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_i_in_peerlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_mka_participant = type { i32, i32 }
%struct.ieee802_1x_mka_hdr = type { i32 }
%struct.ieee802_1x_mka_peer_id = type { i32, i32 }
%struct.ieee802_1x_mka_peer_body = type { i32 }

@MKA_HDR_LEN = common dso_local global i64 0, align 8
@DEFAULT_ICV_LEN = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [164 x i8] c"KaY: MKA Peer Packet Body Length (%zu bytes) is less than the Parameter Set Header Length (%zu bytes) + the Parameter Set Body Length (%zu bytes) + %d bytes of ICV\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MKA_LIVE_PEER_LIST = common dso_local global i64 0, align 8
@MKA_POTENTIAL_PEER_LIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [79 x i8] c"KaY: MKA Peer Packet Body Length (%zu bytes) should be a multiple of 16 octets\00", align 1
@MI_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"KaY: My MI - received MN %u, most recently transmitted MN %u\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_1x_mka_participant*, i64*, i64)* @ieee802_1x_mka_i_in_peerlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_mka_i_in_peerlist(%struct.ieee802_1x_mka_participant* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee802_1x_mka_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ieee802_1x_mka_peer_id*, align 8
  %15 = alloca i32, align 4
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i64*, i64** %6, align 8
  store i64* %16, i64** %12, align 8
  %17 = load i64, i64* %7, align 8
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %127, %3
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @MKA_HDR_LEN, align 8
  %21 = load i64, i64* @DEFAULT_ICV_LEN, align 8
  %22 = add i64 %20, %21
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %140

24:                                               ; preds = %18
  %25 = load i64*, i64** %12, align 8
  %26 = bitcast i64* %25 to %struct.ieee802_1x_mka_hdr*
  store %struct.ieee802_1x_mka_hdr* %26, %struct.ieee802_1x_mka_hdr** %8, align 8
  %27 = load %struct.ieee802_1x_mka_hdr*, %struct.ieee802_1x_mka_hdr** %8, align 8
  %28 = call i64 @get_mka_param_body_len(%struct.ieee802_1x_mka_hdr* %27)
  store i64 %28, i64* %9, align 8
  %29 = load %struct.ieee802_1x_mka_hdr*, %struct.ieee802_1x_mka_hdr** %8, align 8
  %30 = call i64 @get_mka_param_body_type(%struct.ieee802_1x_mka_hdr* %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @MKA_HDR_LEN, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @MKA_ALIGN_LENGTH(i64 %33)
  %35 = add i64 %32, %34
  %36 = load i64, i64* @DEFAULT_ICV_LEN, align 8
  %37 = add i64 %35, %36
  %38 = icmp ult i64 %31, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %24
  %40 = load i32, i32* @MSG_ERROR, align 4
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i64, i64* @MKA_HDR_LEN, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @MKA_ALIGN_LENGTH(i64 %44)
  %46 = load i64, i64* @DEFAULT_ICV_LEN, align 8
  %47 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %43, i64 %45, i64 %46)
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %142

49:                                               ; preds = %24
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @MKA_LIVE_PEER_LIST, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @MKA_POTENTIAL_PEER_LIST, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %127

58:                                               ; preds = %53, %49
  %59 = load i64, i64* %9, align 8
  %60 = urem i64 %59, 16
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* @MSG_ERROR, align 4
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %127

67:                                               ; preds = %58
  %68 = load i64*, i64** %12, align 8
  %69 = bitcast i64* %68 to %struct.ieee802_1x_mka_peer_body*
  %70 = call i32 @ieee802_1x_mka_dump_peer_body(%struct.ieee802_1x_mka_peer_body* %69)
  store i64 0, i64* %13, align 8
  br label %71

71:                                               ; preds = %123, %67
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %126

75:                                               ; preds = %71
  %76 = load i64*, i64** %12, align 8
  %77 = load i64, i64* @MKA_HDR_LEN, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = bitcast i64* %80 to %struct.ieee802_1x_mka_peer_id*
  store %struct.ieee802_1x_mka_peer_id* %81, %struct.ieee802_1x_mka_peer_id** %14, align 8
  %82 = load %struct.ieee802_1x_mka_peer_id*, %struct.ieee802_1x_mka_peer_id** %14, align 8
  %83 = getelementptr inbounds %struct.ieee802_1x_mka_peer_id, %struct.ieee802_1x_mka_peer_id* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %86 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MI_LEN, align 4
  %89 = call i64 @os_memcmp(i32 %84, i32 %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %122

91:                                               ; preds = %75
  %92 = load %struct.ieee802_1x_mka_peer_id*, %struct.ieee802_1x_mka_peer_id** %14, align 8
  %93 = getelementptr inbounds %struct.ieee802_1x_mka_peer_id, %struct.ieee802_1x_mka_peer_id* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @be_to_host32(i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %99 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %100)
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %104 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %119, label %107

107:                                              ; preds = %91
  %108 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %109 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %115 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 1
  %118 = icmp eq i32 %113, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %112, %91
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %4, align 4
  br label %142

121:                                              ; preds = %112, %107
  br label %122

122:                                              ; preds = %121, %75
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %13, align 8
  %125 = add i64 %124, 8
  store i64 %125, i64* %13, align 8
  br label %71

126:                                              ; preds = %71
  br label %127

127:                                              ; preds = %126, %62, %57
  %128 = load i64, i64* %9, align 8
  %129 = call i64 @MKA_ALIGN_LENGTH(i64 %128)
  %130 = load i64, i64* @MKA_HDR_LEN, align 8
  %131 = add i64 %129, %130
  %132 = load i64, i64* %10, align 8
  %133 = sub i64 %132, %131
  store i64 %133, i64* %10, align 8
  %134 = load i64, i64* %9, align 8
  %135 = call i64 @MKA_ALIGN_LENGTH(i64 %134)
  %136 = load i64, i64* @MKA_HDR_LEN, align 8
  %137 = add i64 %135, %136
  %138 = load i64*, i64** %12, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 %137
  store i64* %139, i64** %12, align 8
  br label %18

140:                                              ; preds = %18
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %119, %39
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i64 @get_mka_param_body_len(%struct.ieee802_1x_mka_hdr*) #1

declare dso_local i64 @get_mka_param_body_type(%struct.ieee802_1x_mka_hdr*) #1

declare dso_local i64 @MKA_ALIGN_LENGTH(i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @ieee802_1x_mka_dump_peer_body(%struct.ieee802_1x_mka_peer_body*) #1

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

declare dso_local i32 @be_to_host32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
