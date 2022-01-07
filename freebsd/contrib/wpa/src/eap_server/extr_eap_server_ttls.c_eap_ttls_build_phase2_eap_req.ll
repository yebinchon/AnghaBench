; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_build_phase2_eap_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_build_phase2_eap_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpabuf* (%struct.eap_sm*, i32, i32)* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"EAP-TTLS/EAP: Encapsulate Phase 2 data\00", align 1
@RADIUS_ATTR_EAP_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"EAP-TTLS/EAP: Failed to encapsulate packet\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"EAP-TTLS/EAP: Encrypt encapsulated Phase 2 data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_ttls_data*, i32)* @eap_ttls_build_phase2_eap_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_ttls_build_phase2_eap_req(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_ttls_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %6, align 8
  %11 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.wpabuf* (%struct.eap_sm*, i32, i32)*, %struct.wpabuf* (%struct.eap_sm*, i32, i32)** %13, align 8
  %15 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %16 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %6, align 8
  %17 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.wpabuf* %14(%struct.eap_sm* %15, i32 %18, i32 %19)
  store %struct.wpabuf* %20, %struct.wpabuf** %8, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %22 = icmp eq %struct.wpabuf* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %48

24:                                               ; preds = %3
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %27 = call i32 @wpa_hexdump_buf_key(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.wpabuf* %26)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %29 = load i32, i32* @RADIUS_ATTR_EAP_MESSAGE, align 4
  %30 = call %struct.wpabuf* @eap_ttls_avp_encapsulate(%struct.wpabuf* %28, i32 %29, i32 1)
  store %struct.wpabuf* %30, %struct.wpabuf** %8, align 8
  %31 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %32 = icmp eq %struct.wpabuf* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %48

36:                                               ; preds = %24
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %39 = call i32 @wpa_hexdump_buf_key(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %38)
  %40 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %41 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %6, align 8
  %42 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %41, i32 0, i32 0
  %43 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %44 = call %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm* %40, i32* %42, %struct.wpabuf* %43)
  store %struct.wpabuf* %44, %struct.wpabuf** %9, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %46 = call i32 @wpabuf_free(%struct.wpabuf* %45)
  %47 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %47, %struct.wpabuf** %4, align 8
  br label %48

48:                                               ; preds = %36, %33, %23
  %49 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %49
}

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_ttls_avp_encapsulate(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm*, i32*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
