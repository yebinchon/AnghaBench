; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_phase1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_phase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i64 }
%struct.eap_ssl_data = type { i32, i32, i32*, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"SSL: pending tls_out data when processing new message\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"SSL: TLS processing failed\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"SSL: Failed - tls_out available to report error\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SSL: Using TLS version %s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"TLSv1.3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_server_tls_phase1(%struct.eap_sm* %0, %struct.eap_ssl_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_ssl_data*, align 8
  %6 = alloca [20 x i8], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %5, align 8
  %7 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %8 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i32, i32* @MSG_INFO, align 4
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %15 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @wpabuf_free(i32* %16)
  %18 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %19 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @WPA_ASSERT(i32 %22)
  br label %24

24:                                               ; preds = %11, %2
  %25 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %26 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %32 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @tls_connection_server_handshake(i32 %27, i32 %30, i32 %33, i32* null)
  %35 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %36 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %38 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %24
  %42 = load i32, i32* @MSG_INFO, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %101

44:                                               ; preds = %24
  %45 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %46 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %49 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @tls_connection_get_failed(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = call i32 (i32, i8*, ...) @wpa_printf(i32 %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %101

56:                                               ; preds = %44
  %57 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %58 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %61 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %64 = call i64 @tls_get_version(i32 %59, i32 %62, i8* %63, i32 20)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %56
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %71 = call i64 @os_strcmp(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %75 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %66, %56
  %77 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %78 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %76
  %82 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %83 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %86 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @tls_connection_established(i32 %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %81
  %91 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %92 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %95 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @tls_connection_peer_serial_num(i32 %93, i32 %96)
  %98 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %99 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %90, %81, %76
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %53, %41
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @WPA_ASSERT(i32) #1

declare dso_local i32* @tls_connection_server_handshake(i32, i32, i32, i32*) #1

declare dso_local i64 @tls_connection_get_failed(i32, i32) #1

declare dso_local i64 @tls_get_version(i32, i32, i8*, i32) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i64 @tls_connection_established(i32, i32) #1

declare dso_local i64 @tls_connection_peer_serial_num(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
