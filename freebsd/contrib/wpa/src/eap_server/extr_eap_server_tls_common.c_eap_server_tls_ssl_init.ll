; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_ssl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_ssl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i64, i32*, i32, i64 }
%struct.eap_ssl_data = type { i32, i64, i32*, %struct.eap_sm* }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"TLS context not initialized - cannot use TLS-based EAP method\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"SSL: Failed to initialize new TLS connection\00", align 1
@EAP_TYPE_FAST = common dso_local global i32 0, align 4
@TLS_CONN_DISABLE_SESSION_TICKET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"hostapd\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"SSL: Failed to configure verification of TLS peer certificate\00", align 1
@eap_server_tls_log_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_server_tls_ssl_init(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_ssl_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i64], align 16
  %11 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %13 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %16 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @MSG_ERROR, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %112

22:                                               ; preds = %4
  %23 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %24 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %25 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %24, i32 0, i32 3
  store %struct.eap_sm* %23, %struct.eap_sm** %25, align 8
  %26 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %27 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %30 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %32 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @tls_connection_init(i32* %33)
  %35 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %36 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %38 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %22
  %42 = load i32, i32* @MSG_INFO, align 4
  %43 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %112

44:                                               ; preds = %22
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @EAP_TYPE_FAST, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @TLS_CONN_DISABLE_SESSION_TICKET, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 0
  %54 = call i32 @os_memcpy(i64* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 7
  store i64 %56, i64* %57, align 8
  %58 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %59 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %62 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %11, align 4
  %66 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 0
  %67 = call i64 @tls_connection_set_verify(i32* %60, i32* %63, i32 %64, i32 %65, i64* %66, i32 64)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %52
  %70 = load i32, i32* @MSG_INFO, align 4
  %71 = call i32 @wpa_printf(i32 %70, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %73 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %76 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @tls_connection_deinit(i32* %74, i32* %77)
  %79 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %80 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  store i32 -1, i32* %5, align 4
  br label %112

81:                                               ; preds = %52
  %82 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %83 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %88 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  br label %91

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi i64 [ %89, %86 ], [ 1398, %90 ]
  %93 = trunc i64 %92 to i32
  %94 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %95 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %97 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %91
  %101 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %102 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %103, 100
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %107 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 100
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %105, %100
  br label %111

111:                                              ; preds = %110, %91
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %69, %41, %19
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @tls_connection_init(i32*) #1

declare dso_local i32 @os_memcpy(i64*, i8*, i32) #1

declare dso_local i64 @tls_connection_set_verify(i32*, i32*, i32, i32, i64*, i32) #1

declare dso_local i32 @tls_connection_deinit(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
