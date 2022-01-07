; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_responder_data = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.ikev2_payload_hdr = type { i32, i64, i32 }
%struct.ikev2_prf_alg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"IKEV2: Adding AUTH payload\00", align 1
@AUTH_SHARED_KEY_MIC = common dso_local global i32 0, align 4
@ID_KEY_ID = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"IKEV2: Could not derive AUTH data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_responder_data*, %struct.wpabuf*, i32)* @ikev2_build_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_build_auth(%struct.ikev2_responder_data* %0, %struct.wpabuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_responder_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ikev2_payload_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ikev2_prf_alg*, align 8
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %14 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %13, i32 0, i32 10
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ikev2_prf_alg* @ikev2_get_prf(i32 %16)
  store %struct.ikev2_prf_alg* %17, %struct.ikev2_prf_alg** %10, align 8
  %18 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %10, align 8
  %19 = icmp eq %struct.ikev2_prf_alg* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %99

21:                                               ; preds = %3
  %22 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %23 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %22, i32 24)
  store %struct.ikev2_payload_hdr* %23, %struct.ikev2_payload_hdr** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %26 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %28 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %30 = load i32, i32* @AUTH_SHARED_KEY_MIC, align 4
  %31 = call i32 @wpabuf_put_u8(%struct.wpabuf* %29, i32 %30)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %33 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %32, i32 3)
  %34 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %35 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %34, i32 0, i32 10
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %39 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %42 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %45 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ID_KEY_ID, align 4
  %48 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %49 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %48, i32 0, i32 7
  %50 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %51 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %54 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %57 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %60 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %63 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %66 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %69 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %10, align 8
  %70 = getelementptr inbounds %struct.ikev2_prf_alg, %struct.ikev2_prf_alg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %68, i32 %71)
  %73 = call i64 @ikev2_derive_auth_data(i32 %37, i32* %40, i32 %43, i32 %46, i32 %47, i32* %49, i32 0, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67, %struct.ikev2_payload_hdr* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %21
  %76 = load i32, i32* @MSG_INFO, align 4
  %77 = call i32 @wpa_printf(i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %99

78:                                               ; preds = %21
  %79 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %80 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @wpabuf_free(i32* %81)
  %83 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %84 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  %85 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %86 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %85, i32 0)
  %87 = bitcast %struct.ikev2_payload_hdr* %86 to i32*
  %88 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %89 = bitcast %struct.ikev2_payload_hdr* %88 to i32*
  %90 = ptrtoint i32* %87 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  store i64 %93, i64* %9, align 8
  %94 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %95 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @WPA_PUT_BE16(i32 %96, i64 %97)
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %78, %75, %20
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.ikev2_prf_alg* @ikev2_get_prf(i32) #1

declare dso_local %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i64 @ikev2_derive_auth_data(i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.ikev2_payload_hdr*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @WPA_PUT_BE16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
