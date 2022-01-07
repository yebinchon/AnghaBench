; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_ttls_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EAP_TYPE_TTLS = common dso_local global i32 0, align 4
@EAP_TLS_FLAGS_START = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"EAP-TTLS: Start (server ver=%d, own ver=%d)\00", align 1
@EAP_TLS_VERSION_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_ttls_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_ttls_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.eap_ttls_data*, align 8
  %17 = alloca %struct.wpabuf, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.eap_ttls_data*
  store %struct.eap_ttls_data* %19, %struct.eap_ttls_data** %16, align 8
  %20 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %21 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %16, align 8
  %22 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %21, i32 0, i32 2
  %23 = load i32, i32* @EAP_TYPE_TTLS, align 4
  %24 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %26 = call i32* @eap_peer_tls_process_init(%struct.eap_sm* %20, %struct.TYPE_2__* %22, i32 %23, %struct.eap_method_ret* %24, %struct.wpabuf* %25, i64* %10, i32* %12)
  store i32* %26, i32** %15, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %94

30:                                               ; preds = %4
  %31 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %32 = call i32 @eap_get_id(%struct.wpabuf* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @EAP_TLS_FLAGS_START, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @EAP_TLS_VERSION_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %16, align 8
  %43 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %37, %30
  %47 = load i32*, i32** %15, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @wpabuf_set(%struct.wpabuf* %17, i32* %47, i64 %48)
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  %50 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %51 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %16, align 8
  %54 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @tls_connection_established(i32 %52, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %46
  %60 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %16, align 8
  %61 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %66 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %16, align 8
  %67 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @eap_ttls_decrypt(%struct.eap_sm* %65, %struct.eap_ttls_data* %66, %struct.eap_method_ret* %67, i32 %68, %struct.wpabuf* %17, %struct.wpabuf** %14)
  store i32 %69, i32* %11, align 4
  br label %76

70:                                               ; preds = %59, %46
  %71 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %72 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %16, align 8
  %73 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @eap_ttls_process_handshake(%struct.eap_sm* %71, %struct.eap_ttls_data* %72, %struct.eap_method_ret* %73, i32 %74, %struct.wpabuf* %17, %struct.wpabuf** %14)
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %70, %64
  %77 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %78 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %16, align 8
  %79 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %80 = call i32 @eap_ttls_check_auth_status(%struct.eap_sm* %77, %struct.eap_ttls_data* %78, %struct.eap_method_ret* %79)
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %85 = call i32 @wpabuf_clear_free(%struct.wpabuf* %84)
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @EAP_TYPE_TTLS, align 4
  %88 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %16, align 8
  %89 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.wpabuf* @eap_peer_tls_build_ack(i32 %86, i32 %87, i32 %90)
  store %struct.wpabuf* %91, %struct.wpabuf** %5, align 8
  br label %94

92:                                               ; preds = %76
  %93 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %93, %struct.wpabuf** %5, align 8
  br label %94

94:                                               ; preds = %92, %83, %29
  %95 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %95
}

declare dso_local i32* @eap_peer_tls_process_init(%struct.eap_sm*, %struct.TYPE_2__*, i32, %struct.eap_method_ret*, %struct.wpabuf*, i64*, i32*) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i64) #1

declare dso_local i64 @tls_connection_established(i32, i32) #1

declare dso_local i32 @eap_ttls_decrypt(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i32 @eap_ttls_process_handshake(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i32 @eap_ttls_check_auth_status(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_peer_tls_build_ack(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
