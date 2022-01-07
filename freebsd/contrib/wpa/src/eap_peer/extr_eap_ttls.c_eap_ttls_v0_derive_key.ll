; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_v0_derive_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_v0_derive_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32, i64, i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"ttls keying material\00", align 1
@EAP_TLS_KEY_LEN = common dso_local global i64 0, align 8
@EAP_EMSK_LEN = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"EAP-TTLS: Failed to derive key\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"EAP-TTLS: Derived key\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"EAP-TTLS: Derived EMSK\00", align 1
@EAP_TYPE_TTLS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"EAP-TTLS: Derived Session-Id\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"EAP-TTLS: Failed to derive Session-Id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ttls_data*)* @eap_ttls_v0_derive_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_v0_derive_key(%struct.eap_sm* %0, %struct.eap_ttls_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_ttls_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %5, align 8
  %6 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %7 = call i32 @eap_ttls_free_key(%struct.eap_ttls_data* %6)
  %8 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %9 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %10 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %9, i32 0, i32 2
  %11 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %12 = load i64, i64* @EAP_EMSK_LEN, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @eap_peer_tls_derive_key(%struct.eap_sm* %8, i32* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i64 %13)
  %15 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %16 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %15, i32 0, i32 3
  store i64 %14, i64* %16, align 8
  %17 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %18 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %69

24:                                               ; preds = %2
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %27 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %30 = call i32 @wpa_hexdump_key(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %28, i64 %29)
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %33 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* @EAP_EMSK_LEN, align 8
  %38 = call i32 @wpa_hexdump_key(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %36, i64 %37)
  %39 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %40 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @os_free(i64 %41)
  %43 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %44 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %45 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %44, i32 0, i32 2
  %46 = load i32, i32* @EAP_TYPE_TTLS, align 4
  %47 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %48 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %47, i32 0, i32 0
  %49 = call i64 @eap_peer_tls_derive_session_id(%struct.eap_sm* %43, i32* %45, i32 %46, i32* %48)
  %50 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %51 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %53 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %24
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %59 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %62 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @wpa_hexdump(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %60, i32 %63)
  br label %68

65:                                               ; preds = %24
  %66 = load i32, i32* @MSG_ERROR, align 4
  %67 = call i32 @wpa_printf(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %56
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @eap_ttls_free_key(%struct.eap_ttls_data*) #1

declare dso_local i64 @eap_peer_tls_derive_key(%struct.eap_sm*, i32*, i8*, i32*, i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i64, i64) #1

declare dso_local i32 @os_free(i64) #1

declare dso_local i64 @eap_peer_tls_derive_session_id(%struct.eap_sm*, i32*, i32, i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
