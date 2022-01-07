; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i64, i32, i32, %struct.wpabuf* }
%struct.eap_method_ret = type { i32, i32 }
%struct.wpabuf = type opaque
%struct.ttls_parse_avp = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"EAP-TTLS: received %lu bytes encrypted data for Phase 2\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"EAP-TTLS: Pending Phase 2 request - skip decryption and use old data\00", align 1
@EAP_TYPE_TTLS = common dso_local global i32 0, align 4
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, %struct.wpabuf**)* @eap_ttls_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_decrypt(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, %struct.eap_method_ret* %2, i32 %3, %struct.wpabuf* %4, %struct.wpabuf** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_ttls_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca %struct.wpabuf**, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ttls_parse_avp, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.wpabuf* %4, %struct.wpabuf** %12, align 8
  store %struct.wpabuf** %5, %struct.wpabuf*** %13, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  store i32 0, i32* %15, align 4
  %17 = call i32 @os_memset(%struct.ttls_parse_avp* %16, i32 0, i32 4)
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %20 = icmp ne %struct.wpabuf* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %23 = call i64 @wpabuf_len(%struct.wpabuf* %22)
  br label %25

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i64 [ %23, %21 ], [ 0, %24 ]
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %29 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %28, i32 0, i32 3
  %30 = load %struct.wpabuf*, %struct.wpabuf** %29, align 8
  %31 = icmp ne %struct.wpabuf* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %25
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %36 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %35, i32 0, i32 1
  %37 = call i32 @eap_peer_tls_reset_input(i32* %36)
  %38 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %39 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %38, i32 0, i32 3
  %40 = load %struct.wpabuf*, %struct.wpabuf** %39, align 8
  store %struct.wpabuf* %40, %struct.wpabuf** %14, align 8
  %41 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %42 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %41, i32 0, i32 3
  store %struct.wpabuf* null, %struct.wpabuf** %42, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %44 = call i64 @wpabuf_len(%struct.wpabuf* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %32
  %47 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %48 = call i32 @wpabuf_clear_free(%struct.wpabuf* %47)
  %49 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %50 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %51 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %54 = call i32 @eap_ttls_implicit_identity_request(%struct.eap_sm* %49, %struct.eap_ttls_data* %50, %struct.eap_method_ret* %51, i32 %52, %struct.wpabuf** %53)
  store i32 %54, i32* %7, align 4
  br label %135

55:                                               ; preds = %32
  br label %103

56:                                               ; preds = %25
  %57 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %58 = icmp eq %struct.wpabuf* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %61 = call i64 @wpabuf_len(%struct.wpabuf* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59, %56
  %64 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %65 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %70 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %71 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %74 = call i32 @eap_ttls_phase2_start(%struct.eap_sm* %69, %struct.eap_ttls_data* %70, %struct.eap_method_ret* %71, i32 %72, %struct.wpabuf** %73)
  store i32 %74, i32* %7, align 4
  br label %135

75:                                               ; preds = %63, %59
  %76 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %77 = icmp eq %struct.wpabuf* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %80 = call i64 @wpabuf_len(%struct.wpabuf* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %78, %75
  %83 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %84 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %85 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %84, i32 0, i32 1
  %86 = load i32, i32* @EAP_TYPE_TTLS, align 4
  %87 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %88 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %92 = call i32 @eap_peer_tls_encrypt(%struct.eap_sm* %83, i32* %85, i32 %86, i32 %89, i32 %90, i32* null, %struct.wpabuf** %91)
  store i32 %92, i32* %7, align 4
  br label %135

93:                                               ; preds = %78
  %94 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %95 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %96 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %95, i32 0, i32 1
  %97 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %98 = call i32 @eap_peer_tls_decrypt(%struct.eap_sm* %94, i32* %96, %struct.wpabuf* %97, %struct.wpabuf** %14)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %118

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %55
  %104 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %105 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %107 = call i64 @eap_ttls_parse_avps(%struct.wpabuf* %106, %struct.ttls_parse_avp* %16)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 -1, i32* %15, align 4
  br label %118

110:                                              ; preds = %103
  %111 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %112 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %113 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %116 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %117 = call i32 @eap_ttls_process_decrypted(%struct.eap_sm* %111, %struct.eap_ttls_data* %112, %struct.eap_method_ret* %113, i32 %114, %struct.ttls_parse_avp* %16, %struct.wpabuf* %115, %struct.wpabuf** %116)
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %110, %109, %101
  %119 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %120 = call i32 @wpabuf_clear_free(%struct.wpabuf* %119)
  %121 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %16, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @os_free(i32 %122)
  %124 = load i32, i32* %15, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %118
  %127 = load i32, i32* @METHOD_DONE, align 4
  %128 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %129 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @DECISION_FAIL, align 4
  %131 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %132 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %126, %118
  %134 = load i32, i32* %15, align 4
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %133, %82, %68, %46
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @os_memset(%struct.ttls_parse_avp*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @eap_peer_tls_reset_input(i32*) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i32 @eap_ttls_implicit_identity_request(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, i32, %struct.wpabuf**) #1

declare dso_local i32 @eap_ttls_phase2_start(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, i32, %struct.wpabuf**) #1

declare dso_local i32 @eap_peer_tls_encrypt(%struct.eap_sm*, i32*, i32, i32, i32, i32*, %struct.wpabuf**) #1

declare dso_local i32 @eap_peer_tls_decrypt(%struct.eap_sm*, i32*, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i64 @eap_ttls_parse_avps(%struct.wpabuf*, %struct.ttls_parse_avp*) #1

declare dso_local i32 @eap_ttls_process_decrypted(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, i32, %struct.ttls_parse_avp*, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i32 @os_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
