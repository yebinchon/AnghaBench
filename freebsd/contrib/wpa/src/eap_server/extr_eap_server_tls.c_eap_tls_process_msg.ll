; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_process_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_process_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_tls_data = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, %struct.wpabuf* }

@SUCCESS = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"EAP-TLS: Client acknowledged final TLS handshake message\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"EAP-TLS: Send empty application data to indicate end of exchange\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"EAP-TLS: Failed to resize output buffer\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"EAP-TLS: Data appended to the message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_tls_process_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_tls_process_msg(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_tls_data*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.eap_tls_data*
  store %struct.eap_tls_data* %11, %struct.eap_tls_data** %7, align 8
  %12 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %13 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %19 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load %struct.wpabuf*, %struct.wpabuf** %20, align 8
  %22 = call i64 @wpabuf_len(%struct.wpabuf* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %98

27:                                               ; preds = %17, %3
  %28 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %29 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %30 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %29, i32 0, i32 1
  %31 = call i64 @eap_server_tls_phase1(%struct.eap_sm* %28, %struct.TYPE_3__* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %35 = load i32, i32* @FAILURE, align 4
  %36 = call i32 @eap_tls_state(%struct.eap_tls_data* %34, i32 %35)
  br label %98

37:                                               ; preds = %27
  %38 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %39 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %98

43:                                               ; preds = %37
  %44 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %45 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %48 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @tls_connection_established(i32 %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %98

53:                                               ; preds = %43
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = call i32 @wpa_printf(i32 %54, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %56 = call %struct.wpabuf* @wpabuf_alloc(i32 1)
  store %struct.wpabuf* %56, %struct.wpabuf** %8, align 8
  %57 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %58 = icmp ne %struct.wpabuf* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %98

60:                                               ; preds = %53
  %61 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %62 = call i32 @wpabuf_put_u8(%struct.wpabuf* %61, i32 0)
  %63 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %64 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %65 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %64, i32 0, i32 1
  %66 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %67 = call %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm* %63, %struct.TYPE_3__* %65, %struct.wpabuf* %66)
  store %struct.wpabuf* %67, %struct.wpabuf** %9, align 8
  %68 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %69 = call i32 @wpabuf_free(%struct.wpabuf* %68)
  %70 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %71 = icmp ne %struct.wpabuf* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %60
  br label %98

73:                                               ; preds = %60
  %74 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %75 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %78 = call i64 @wpabuf_len(%struct.wpabuf* %77)
  %79 = call i64 @wpabuf_resize(i32* %76, i64 %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load i32, i32* @MSG_INFO, align 4
  %83 = call i32 @wpa_printf(i32 %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %85 = call i32 @wpabuf_free(%struct.wpabuf* %84)
  br label %98

86:                                               ; preds = %73
  %87 = load %struct.eap_tls_data*, %struct.eap_tls_data** %7, align 8
  %88 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %92 = call i32 @wpabuf_put_buf(i32 %90, %struct.wpabuf* %91)
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %95 = call i32 @wpa_hexdump_buf(i32 %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), %struct.wpabuf* %94)
  %96 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %97 = call i32 @wpabuf_free(%struct.wpabuf* %96)
  br label %98

98:                                               ; preds = %24, %33, %59, %72, %81, %86, %43, %37
  ret void
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eap_server_tls_phase1(%struct.eap_sm*, %struct.TYPE_3__*) #1

declare dso_local i32 @eap_tls_state(%struct.eap_tls_data*, i32) #1

declare dso_local i64 @tls_connection_established(i32, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm*, %struct.TYPE_3__*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_resize(i32*, i64) #1

declare dso_local i32 @wpabuf_put_buf(i32, %struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
