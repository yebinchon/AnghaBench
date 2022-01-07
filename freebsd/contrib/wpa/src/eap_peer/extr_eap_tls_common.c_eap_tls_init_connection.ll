; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_tls_init_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_tls_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i8* }
%struct.eap_ssl_data = type { i32*, i32 }
%struct.eap_peer_config = type { i32, i32* }
%struct.tls_connection_params = type { i32 }

@TLS_CONN_REQUEST_OCSP = common dso_local global i32 0, align 4
@TLS_CONN_REQUIRE_OCSP = common dso_local global i32 0, align 4
@TLS_CONN_REQUIRE_OCSP_ALL = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SSL: Failed to initialize new TLS connection\00", align 1
@TLS_SET_PARAMS_ENGINE_PRV_BAD_PIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"TLS: Bad PIN provided, requesting a new one\00", align 1
@TRUE = common dso_local global i8* null, align 8
@TLS_SET_PARAMS_ENGINE_PRV_INIT_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"TLS: Failed to initialize engine\00", align 1
@TLS_SET_PARAMS_ENGINE_PRV_VERIFY_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"TLS: Failed to load private key\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"TLS: Failed to set TLS connection parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ssl_data*, %struct.eap_peer_config*, %struct.tls_connection_params*)* @eap_tls_init_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_tls_init_connection(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, %struct.eap_peer_config* %2, %struct.tls_connection_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_ssl_data*, align 8
  %8 = alloca %struct.eap_peer_config*, align 8
  %9 = alloca %struct.tls_connection_params*, align 8
  %10 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %7, align 8
  store %struct.eap_peer_config* %2, %struct.eap_peer_config** %8, align 8
  store %struct.tls_connection_params* %3, %struct.tls_connection_params** %9, align 8
  %11 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %12 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* @TLS_CONN_REQUEST_OCSP, align 4
  %17 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %18 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %15, %4
  %22 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %23 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 2
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @TLS_CONN_REQUIRE_OCSP, align 4
  %28 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %29 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %34 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @TLS_CONN_REQUIRE_OCSP_ALL, align 4
  %39 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %40 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %45 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32* @tls_connection_init(i32 %46)
  %48 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %49 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %51 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @MSG_INFO, align 4
  %56 = call i32 @wpa_printf(i32 %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %118

57:                                               ; preds = %43
  %58 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %59 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %62 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %65 = call i32 @tls_connection_set_params(i32 %60, i32* %63, %struct.tls_connection_params* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @TLS_SET_PARAMS_ENGINE_PRV_BAD_PIN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %57
  %70 = load i32, i32* @MSG_INFO, align 4
  %71 = call i32 @wpa_printf(i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %73 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @os_free(i32* %74)
  %76 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %77 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %76, i32 0, i32 1
  store i32* null, i32** %77, align 8
  %78 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %79 = call i32 @eap_sm_request_pin(%struct.eap_sm* %78)
  %80 = load i8*, i8** @TRUE, align 8
  %81 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %82 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  br label %102

83:                                               ; preds = %57
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @TLS_SET_PARAMS_ENGINE_PRV_INIT_FAILED, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @MSG_INFO, align 4
  %89 = call i32 @wpa_printf(i32 %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %101

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @TLS_SET_PARAMS_ENGINE_PRV_VERIFY_FAILED, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* @MSG_INFO, align 4
  %96 = call i32 @wpa_printf(i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i8*, i8** @TRUE, align 8
  %98 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %99 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %94, %90
  br label %101

101:                                              ; preds = %100, %87
  br label %102

102:                                              ; preds = %101, %69
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load i32, i32* @MSG_INFO, align 4
  %107 = call i32 @wpa_printf(i32 %106, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %108 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %109 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %112 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @tls_connection_deinit(i32 %110, i32* %113)
  %115 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %116 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %115, i32 0, i32 0
  store i32* null, i32** %116, align 8
  store i32 -1, i32* %5, align 4
  br label %118

117:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %105, %54
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32* @tls_connection_init(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @tls_connection_set_params(i32, i32*, %struct.tls_connection_params*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @eap_sm_request_pin(%struct.eap_sm*) #1

declare dso_local i32 @tls_connection_deinit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
