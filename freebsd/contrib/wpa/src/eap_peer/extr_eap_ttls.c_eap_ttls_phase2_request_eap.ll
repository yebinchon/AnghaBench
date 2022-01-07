; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_request_eap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_request_eap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32 }
%struct.eap_method_ret = type { i32 }
%struct.eap_hdr = type { i32, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_peer_config = type { i64, i64, i64, i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"EAP-TTLS: too short Phase 2 request (len=%lu)\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"EAP-TTLS: Phase 2 EAP Request: type=%d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"EAP-TTLS: AVP encapsulate EAP Response\00", align 1
@RADIUS_ATTR_EAP_MESSAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.eap_hdr*, %struct.wpabuf**)* @eap_ttls_phase2_request_eap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_phase2_request_eap(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, %struct.eap_method_ret* %2, %struct.eap_hdr* %3, %struct.wpabuf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_ttls_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca %struct.eap_hdr*, align 8
  %11 = alloca %struct.wpabuf**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.eap_peer_config*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store %struct.eap_hdr* %3, %struct.eap_hdr** %10, align 8
  store %struct.wpabuf** %4, %struct.wpabuf*** %11, align 8
  %15 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %16 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @be_to_host16(i32 %17)
  store i64 %18, i64* %12, align 8
  %19 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %20 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %19)
  store %struct.eap_peer_config* %20, %struct.eap_peer_config** %14, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ule i64 %21, 8
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %25)
  store i32 -1, i32* %6, align 4
  br label %95

27:                                               ; preds = %5
  %28 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %29 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %28, i64 1
  %30 = bitcast %struct.eap_hdr* %29 to i64*
  store i64* %30, i64** %13, align 8
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = load i64*, i64** %13, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i64*, i64** %13, align 8
  %36 = load i64, i64* %35, align 8
  switch i64 %36, label %44 [
    i64 128, label %37
  ]

37:                                               ; preds = %27
  %38 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %39 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %40 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.wpabuf* @eap_sm_buildIdentity(%struct.eap_sm* %38, i32 %41, i32 1)
  %43 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  store %struct.wpabuf* %42, %struct.wpabuf** %43, align 8
  br label %57

44:                                               ; preds = %27
  %45 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %46 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %47 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %48 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64*, i64** %13, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %53 = call i32 @eap_ttls_phase2_request_eap_method(%struct.eap_sm* %45, %struct.eap_ttls_data* %46, %struct.eap_method_ret* %47, %struct.eap_hdr* %48, i64 %49, i64 %51, %struct.wpabuf** %52)
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32 -1, i32* %6, align 4
  br label %95

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %37
  %58 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %58, align 8
  %60 = icmp eq %struct.wpabuf* %59, null
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load %struct.eap_peer_config*, %struct.eap_peer_config** %14, align 8
  %63 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %61
  %67 = load %struct.eap_peer_config*, %struct.eap_peer_config** %14, align 8
  %68 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %66
  %72 = load %struct.eap_peer_config*, %struct.eap_peer_config** %14, align 8
  %73 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.eap_peer_config*, %struct.eap_peer_config** %14, align 8
  %78 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %71, %66, %61
  store i32 0, i32* %6, align 4
  br label %95

82:                                               ; preds = %76, %57
  %83 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %84 = load %struct.wpabuf*, %struct.wpabuf** %83, align 8
  %85 = icmp eq %struct.wpabuf* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 -1, i32* %6, align 4
  br label %95

87:                                               ; preds = %82
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %90 = load %struct.wpabuf*, %struct.wpabuf** %89, align 8
  %91 = call i32 @wpa_hexdump_buf(i32 %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %90)
  %92 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %93 = load i32, i32* @RADIUS_ATTR_EAP_MESSAGE, align 4
  %94 = call i32 @eap_ttls_avp_encapsulate(%struct.wpabuf** %92, i32 %93, i32 1)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %87, %86, %81, %55, %23
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local %struct.wpabuf* @eap_sm_buildIdentity(%struct.eap_sm*, i32, i32) #1

declare dso_local i32 @eap_ttls_phase2_request_eap_method(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.eap_hdr*, i64, i64, %struct.wpabuf**) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @eap_ttls_avp_encapsulate(%struct.wpabuf**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
