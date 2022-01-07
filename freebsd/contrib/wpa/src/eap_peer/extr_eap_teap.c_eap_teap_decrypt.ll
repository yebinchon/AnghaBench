; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { %struct.TYPE_4__, i64, i32, %struct.wpabuf* }
%struct.TYPE_4__ = type { i32 }
%struct.eap_method_ret = type { i32, i64 }
%struct.wpabuf = type opaque

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"EAP-TEAP: Received %lu bytes encrypted data for Phase 2\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"EAP-TEAP: Pending Phase 2 request - skip decryption and use old data\00", align 1
@EAP_TYPE_TEAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"EAP-TEAP: Mark authentication completed at full TX of fragments\00", align 1
@DECISION_UNCOND_SUCC = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"EAP-TEAP: Decrypted Phase 2 TLV(s)\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"EAP-TEAP: Too short Phase 2 TLV frame (len=%lu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_teap_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, %struct.wpabuf**)* @eap_teap_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_decrypt(%struct.eap_sm* %0, %struct.eap_teap_data* %1, %struct.eap_method_ret* %2, i32 %3, %struct.wpabuf* %4, %struct.wpabuf** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_teap_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca %struct.wpabuf**, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.wpabuf* %4, %struct.wpabuf** %12, align 8
  store %struct.wpabuf** %5, %struct.wpabuf*** %13, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %18 = call i32 @wpabuf_len(%struct.wpabuf* %17)
  %19 = sext i32 %18 to i64
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %22 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %21, i32 0, i32 3
  %23 = load %struct.wpabuf*, %struct.wpabuf** %22, align 8
  %24 = icmp ne %struct.wpabuf* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %6
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %29 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %28, i32 0, i32 0
  %30 = call i32 @eap_peer_tls_reset_input(%struct.TYPE_4__* %29)
  %31 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %32 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %31, i32 0, i32 3
  %33 = load %struct.wpabuf*, %struct.wpabuf** %32, align 8
  store %struct.wpabuf* %33, %struct.wpabuf** %14, align 8
  %34 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %35 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %34, i32 0, i32 3
  store %struct.wpabuf* null, %struct.wpabuf** %35, align 8
  br label %90

36:                                               ; preds = %6
  %37 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %38 = call i32 @wpabuf_len(%struct.wpabuf* %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %36
  %41 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %42 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %43 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %42, i32 0, i32 0
  %44 = load i32, i32* @EAP_TYPE_TEAP, align 4
  %45 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %46 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %50 = call i32 @eap_peer_tls_encrypt(%struct.eap_sm* %41, %struct.TYPE_4__* %43, i32 %44, i32 %47, i32 %48, i32* null, %struct.wpabuf** %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %40
  %54 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %55 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %53
  %60 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %61 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %68 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %71 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %73 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @DECISION_UNCOND_SUCC, align 4
  %75 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %76 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %64, %59, %53, %40
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %7, align 4
  br label %116

79:                                               ; preds = %36
  %80 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %81 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %82 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %81, i32 0, i32 0
  %83 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %84 = call i32 @eap_peer_tls_decrypt(%struct.eap_sm* %80, %struct.TYPE_4__* %82, %struct.wpabuf* %83, %struct.wpabuf** %14)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %7, align 4
  br label %116

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %25
  %91 = load i32, i32* @MSG_MSGDUMP, align 4
  %92 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %93 = call i32 @wpa_hexdump_buf(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), %struct.wpabuf* %92)
  %94 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %95 = call i32 @wpabuf_len(%struct.wpabuf* %94)
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load i32, i32* @MSG_INFO, align 4
  %99 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %100 = call i32 @wpabuf_len(%struct.wpabuf* %99)
  %101 = sext i32 %100 to i64
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i64 %101)
  %103 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %104 = call i32 @wpabuf_free(%struct.wpabuf* %103)
  store i32 -1, i32* %7, align 4
  br label %116

105:                                              ; preds = %90
  %106 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %107 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %108 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %111 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %112 = call i32 @eap_teap_process_decrypted(%struct.eap_sm* %106, %struct.eap_teap_data* %107, %struct.eap_method_ret* %108, i32 %109, %struct.wpabuf* %110, %struct.wpabuf** %111)
  store i32 %112, i32* %15, align 4
  %113 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %114 = call i32 @wpabuf_free(%struct.wpabuf* %113)
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %105, %97, %87, %77
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @eap_peer_tls_reset_input(%struct.TYPE_4__*) #1

declare dso_local i32 @eap_peer_tls_encrypt(%struct.eap_sm*, %struct.TYPE_4__*, i32, i32, i32, i32*, %struct.wpabuf**) #1

declare dso_local i32 @eap_peer_tls_decrypt(%struct.eap_sm*, %struct.TYPE_4__*, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @eap_teap_process_decrypted(%struct.eap_sm*, %struct.eap_teap_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, %struct.wpabuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
