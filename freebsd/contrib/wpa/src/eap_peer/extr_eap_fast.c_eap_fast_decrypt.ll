; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32, i32, %struct.wpabuf* }
%struct.eap_method_ret = type { i32 }
%struct.wpabuf = type opaque

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"EAP-FAST: Received %lu bytes encrypted data for Phase 2\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"EAP-FAST: Pending Phase 2 request - skip decryption and use old data\00", align 1
@EAP_TYPE_FAST = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"EAP-FAST: Decrypted Phase 2 TLV(s)\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"EAP-FAST: Too short Phase 2 TLV frame (len=%lu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, %struct.wpabuf**)* @eap_fast_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_decrypt(%struct.eap_sm* %0, %struct.eap_fast_data* %1, %struct.eap_method_ret* %2, i32 %3, %struct.wpabuf* %4, %struct.wpabuf** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_fast_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca %struct.wpabuf**, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.wpabuf* %4, %struct.wpabuf** %12, align 8
  store %struct.wpabuf** %5, %struct.wpabuf*** %13, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %18 = call i32 @wpabuf_len(%struct.wpabuf* %17)
  %19 = sext i32 %18 to i64
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %22 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %21, i32 0, i32 2
  %23 = load %struct.wpabuf*, %struct.wpabuf** %22, align 8
  %24 = icmp ne %struct.wpabuf* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %6
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %29 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %28, i32 0, i32 0
  %30 = call i32 @eap_peer_tls_reset_input(i32* %29)
  %31 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %32 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %31, i32 0, i32 2
  %33 = load %struct.wpabuf*, %struct.wpabuf** %32, align 8
  store %struct.wpabuf* %33, %struct.wpabuf** %14, align 8
  %34 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %35 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %34, i32 0, i32 2
  store %struct.wpabuf* null, %struct.wpabuf** %35, align 8
  br label %62

36:                                               ; preds = %6
  %37 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %38 = call i32 @wpabuf_len(%struct.wpabuf* %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %42 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %43 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %42, i32 0, i32 0
  %44 = load i32, i32* @EAP_TYPE_FAST, align 4
  %45 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %46 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %50 = call i32 @eap_peer_tls_encrypt(%struct.eap_sm* %41, i32* %43, i32 %44, i32 %47, i32 %48, i32* null, %struct.wpabuf** %49)
  store i32 %50, i32* %7, align 4
  br label %88

51:                                               ; preds = %36
  %52 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %53 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %54 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %53, i32 0, i32 0
  %55 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %56 = call i32 @eap_peer_tls_decrypt(%struct.eap_sm* %52, i32* %54, %struct.wpabuf* %55, %struct.wpabuf** %14)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %7, align 4
  br label %88

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %25
  %63 = load i32, i32* @MSG_MSGDUMP, align 4
  %64 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %65 = call i32 @wpa_hexdump_buf(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %64)
  %66 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %67 = call i32 @wpabuf_len(%struct.wpabuf* %66)
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load i32, i32* @MSG_INFO, align 4
  %71 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %72 = call i32 @wpabuf_len(%struct.wpabuf* %71)
  %73 = sext i32 %72 to i64
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  %75 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %76 = call i32 @wpabuf_clear_free(%struct.wpabuf* %75)
  store i32 -1, i32* %7, align 4
  br label %88

77:                                               ; preds = %62
  %78 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %79 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %80 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %83 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %84 = call i32 @eap_fast_process_decrypted(%struct.eap_sm* %78, %struct.eap_fast_data* %79, %struct.eap_method_ret* %80, i32 %81, %struct.wpabuf* %82, %struct.wpabuf** %83)
  store i32 %84, i32* %15, align 4
  %85 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %86 = call i32 @wpabuf_clear_free(%struct.wpabuf* %85)
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %77, %69, %59, %40
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @eap_peer_tls_reset_input(i32*) #1

declare dso_local i32 @eap_peer_tls_encrypt(%struct.eap_sm*, i32*, i32, i32, i32, i32*, %struct.wpabuf**) #1

declare dso_local i32 @eap_peer_tls_decrypt(%struct.eap_sm*, i32*, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i32 @eap_fast_process_decrypted(%struct.eap_sm*, %struct.eap_fast_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, %struct.wpabuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
