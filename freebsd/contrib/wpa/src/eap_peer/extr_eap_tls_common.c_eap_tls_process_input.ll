; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_tls_process_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_tls_process_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32, i32, %struct.wpabuf* }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"SSL: eap_tls_process_input - pending tls_out data even though tls_out_len = 0\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"SSL: Application data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ssl_data*, %struct.wpabuf*, %struct.wpabuf**)* @eap_tls_process_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_tls_process_input(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, %struct.wpabuf* %2, %struct.wpabuf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_ssl_data*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.wpabuf**, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %7, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %8, align 8
  store %struct.wpabuf** %3, %struct.wpabuf*** %9, align 8
  %13 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %14 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %15 = call %struct.wpabuf* @eap_peer_tls_data_reassemble(%struct.eap_ssl_data* %13, %struct.wpabuf* %14, i32* %11)
  store %struct.wpabuf* %15, %struct.wpabuf** %10, align 8
  %16 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %17 = icmp eq %struct.wpabuf* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 -1
  store i32 %22, i32* %5, align 4
  br label %83

23:                                               ; preds = %4
  %24 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %25 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %24, i32 0, i32 2
  %26 = load %struct.wpabuf*, %struct.wpabuf** %25, align 8
  %27 = icmp ne %struct.wpabuf* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i32, i32* @MSG_INFO, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %32 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %31, i32 0, i32 2
  %33 = load %struct.wpabuf*, %struct.wpabuf** %32, align 8
  %34 = call i32 @wpabuf_free(%struct.wpabuf* %33)
  %35 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %36 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %35, i32 0, i32 2
  %37 = load %struct.wpabuf*, %struct.wpabuf** %36, align 8
  %38 = icmp eq %struct.wpabuf* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @WPA_ASSERT(i32 %39)
  br label %41

41:                                               ; preds = %28, %23
  store %struct.wpabuf* null, %struct.wpabuf** %12, align 8
  %42 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %43 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %46 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %49 = call %struct.wpabuf* @tls_connection_handshake(i32 %44, i32 %47, %struct.wpabuf* %48, %struct.wpabuf** %12)
  %50 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %51 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %50, i32 0, i32 2
  store %struct.wpabuf* %49, %struct.wpabuf** %51, align 8
  %52 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %53 = call i32 @eap_peer_tls_reset_input(%struct.eap_ssl_data* %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %55 = icmp ne %struct.wpabuf* %54, null
  br i1 %55, label %56, label %80

56:                                               ; preds = %41
  %57 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %58 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %61 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @tls_connection_established(i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %56
  %66 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %67 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %70 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @tls_connection_get_failed(i32 %68, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @MSG_MSGDUMP, align 4
  %76 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %77 = call i32 @wpa_hexdump_buf_key(i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.wpabuf* %76)
  %78 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %79 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  store %struct.wpabuf* %78, %struct.wpabuf** %79, align 8
  store i32 2, i32* %5, align 4
  br label %83

80:                                               ; preds = %65, %56, %41
  %81 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %82 = call i32 @wpabuf_free(%struct.wpabuf* %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %74, %18
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.wpabuf* @eap_peer_tls_data_reassemble(%struct.eap_ssl_data*, %struct.wpabuf*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @WPA_ASSERT(i32) #1

declare dso_local %struct.wpabuf* @tls_connection_handshake(i32, i32, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i32 @eap_peer_tls_reset_input(%struct.eap_ssl_data*) #1

declare dso_local i64 @tls_connection_established(i32, i32) #1

declare dso_local i32 @tls_connection_get_failed(i32, i32) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
