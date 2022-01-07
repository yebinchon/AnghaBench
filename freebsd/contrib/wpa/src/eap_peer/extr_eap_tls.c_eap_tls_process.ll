; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls.c_eap_tls_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls.c_eap_tls_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64 }
%struct.eap_method_ret = type { i32, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_tls_data = type { i32, %struct.TYPE_4__, i32, %struct.wpabuf* }
%struct.TYPE_4__ = type { i32, %struct.wpabuf* }
%struct.eap_peer_config = type { i64 }

@EXT_CERT_CHECK_GOOD = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"EAP-TLS: External certificate check succeeded - continue handshake\00", align 1
@EXT_CERT_CHECK_BAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"EAP-TLS: External certificate check failed - force authentication failure\00", align 1
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"EAP-TLS: Continuing to wait external server certificate validation\00", align 1
@EAP_TLS_FLAGS_START = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"EAP-TLS: Start\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"EAP-TLS: Waiting external server certificate validation\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"EAP-TLS: Received Application Data\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"EAP-TLS: Remaining tls_out data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_tls_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_tls_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.eap_tls_data*, align 8
  %17 = alloca %struct.wpabuf, align 4
  %18 = alloca %struct.eap_peer_config*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.eap_tls_data*
  store %struct.eap_tls_data* %20, %struct.eap_tls_data** %16, align 8
  %21 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %69

25:                                               ; preds = %4
  %26 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %27 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %26, i32 0, i32 3
  %28 = load %struct.wpabuf*, %struct.wpabuf** %27, align 8
  %29 = icmp ne %struct.wpabuf* %28, null
  br i1 %29, label %30, label %69

30:                                               ; preds = %25
  %31 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %32 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %31)
  store %struct.eap_peer_config* %32, %struct.eap_peer_config** %18, align 8
  %33 = load %struct.eap_peer_config*, %struct.eap_peer_config** %18, align 8
  %34 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EXT_CERT_CHECK_GOOD, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %42 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %41, i32 0, i32 3
  %43 = load %struct.wpabuf*, %struct.wpabuf** %42, align 8
  store %struct.wpabuf* %43, %struct.wpabuf** %12, align 8
  %44 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %45 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %44, i32 0, i32 3
  store %struct.wpabuf* null, %struct.wpabuf** %45, align 8
  %46 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %47 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %48, %struct.wpabuf** %5, align 8
  br label %173

49:                                               ; preds = %30
  %50 = load %struct.eap_peer_config*, %struct.eap_peer_config** %18, align 8
  %51 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EXT_CERT_CHECK_BAD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @METHOD_DONE, align 4
  %59 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %60 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @DECISION_FAIL, align 4
  %62 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %63 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %65 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %173

66:                                               ; preds = %49
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 @wpa_printf(i32 %67, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %173

69:                                               ; preds = %25, %4
  %70 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %71 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %72 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %71, i32 0, i32 1
  %73 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %74 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %77 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %78 = call i32* @eap_peer_tls_process_init(%struct.eap_sm* %70, %struct.TYPE_4__* %72, i32 %75, %struct.eap_method_ret* %76, %struct.wpabuf* %77, i64* %10, i32* %13)
  store i32* %78, i32** %15, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %173

82:                                               ; preds = %69
  %83 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %84 = call i32 @eap_get_id(%struct.wpabuf* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @EAP_TLS_FLAGS_START, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = call i32 @wpa_printf(i32 %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %92

92:                                               ; preds = %89, %82
  store %struct.wpabuf* null, %struct.wpabuf** %12, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @wpabuf_set(%struct.wpabuf* %17, i32* %93, i64 %94)
  %96 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %97 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %98 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %97, i32 0, i32 1
  %99 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %100 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @eap_peer_tls_process_helper(%struct.eap_sm* %96, %struct.TYPE_4__* %98, i32 %101, i32 0, i32 %102, %struct.wpabuf* %17, %struct.wpabuf** %12)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %92
  %107 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %108 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %109 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call %struct.wpabuf* @eap_tls_failure(%struct.eap_sm* %107, %struct.eap_tls_data* %108, %struct.eap_method_ret* %109, i32 %110, %struct.wpabuf* %111, i32 %112)
  store %struct.wpabuf* %113, %struct.wpabuf** %5, align 8
  br label %173

114:                                              ; preds = %92
  %115 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %116 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %114
  %120 = load i32, i32* @MSG_DEBUG, align 4
  %121 = call i32 @wpa_printf(i32 %120, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %122 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %123 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %122, i32 0, i32 3
  %124 = load %struct.wpabuf*, %struct.wpabuf** %123, align 8
  %125 = call i32 @wpabuf_free(%struct.wpabuf* %124)
  %126 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %127 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %128 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %127, i32 0, i32 3
  store %struct.wpabuf* %126, %struct.wpabuf** %128, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %173

129:                                              ; preds = %114
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load i32, i32* @MSG_DEBUG, align 4
  %134 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %135 = call i32 @wpa_hexdump_buf(i32 %133, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), %struct.wpabuf* %134)
  %136 = load i32, i32* @MSG_DEBUG, align 4
  %137 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %138 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load %struct.wpabuf*, %struct.wpabuf** %139, align 8
  %141 = call i32 @wpa_hexdump_buf(i32 %136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), %struct.wpabuf* %140)
  %142 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %143 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %142, i32 0, i32 1
  %144 = call i32 @eap_peer_tls_reset_output(%struct.TYPE_4__* %143)
  store i32 1, i32* %11, align 4
  br label %145

145:                                              ; preds = %132, %129
  %146 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %147 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %150 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @tls_connection_established(i32 %148, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %145
  %156 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %157 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %158 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %159 = call i32 @eap_tls_success(%struct.eap_sm* %156, %struct.eap_tls_data* %157, %struct.eap_method_ret* %158)
  br label %160

160:                                              ; preds = %155, %145
  %161 = load i32, i32* %11, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %165 = call i32 @wpabuf_free(%struct.wpabuf* %164)
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.eap_tls_data*, %struct.eap_tls_data** %16, align 8
  %168 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call %struct.wpabuf* @eap_peer_tls_build_ack(i32 %166, i32 %169, i32 0)
  store %struct.wpabuf* %170, %struct.wpabuf** %5, align 8
  br label %173

171:                                              ; preds = %160
  %172 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %172, %struct.wpabuf** %5, align 8
  br label %173

173:                                              ; preds = %171, %163, %119, %106, %81, %66, %55, %38
  %174 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %174
}

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @eap_peer_tls_process_init(%struct.eap_sm*, %struct.TYPE_4__*, i32, %struct.eap_method_ret*, %struct.wpabuf*, i64*, i32*) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i64) #1

declare dso_local i32 @eap_peer_tls_process_helper(%struct.eap_sm*, %struct.TYPE_4__*, i32, i32, i32, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local %struct.wpabuf* @eap_tls_failure(%struct.eap_sm*, %struct.eap_tls_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @eap_peer_tls_reset_output(%struct.TYPE_4__*) #1

declare dso_local i64 @tls_connection_established(i32, i32) #1

declare dso_local i32 @eap_tls_success(%struct.eap_sm*, %struct.eap_tls_data*, %struct.eap_method_ret*) #1

declare dso_local %struct.wpabuf* @eap_peer_tls_build_ack(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
