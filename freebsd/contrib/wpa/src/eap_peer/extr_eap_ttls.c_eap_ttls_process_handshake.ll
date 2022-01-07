; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_process_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_process_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i64 }
%struct.eap_ttls_data = type { i32, %struct.wpabuf*, i64, %struct.TYPE_2__, %struct.wpabuf*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.eap_method_ret = type { i8*, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_peer_config = type { i64 }

@EXT_CERT_CHECK_GOOD = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"EAP-TTLS: External certificate check succeeded - continue handshake\00", align 1
@EXT_CERT_CHECK_BAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"EAP-TTLS: External certificate check failed - force authentication failure\00", align 1
@METHOD_DONE = common dso_local global i8* null, align 8
@DECISION_FAIL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [68 x i8] c"EAP-TTLS: Continuing to wait external server certificate validation\00", align 1
@EAP_TYPE_TTLS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"EAP-TTLS: TLS processing failed\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"EAP-TTLS: Waiting external server certificate validation\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"EAP-TTLS: TLS done, proceed to Phase 2\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"EAP-TTLS: fast reauth - may skip Phase 2\00", align 1
@DECISION_COND_SUCC = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i8* null, align 8
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"EAP-TTLS: failed to process early start for Phase 2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, %struct.wpabuf**)* @eap_ttls_process_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_process_handshake(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, %struct.eap_method_ret* %2, i32 %3, %struct.wpabuf* %4, %struct.wpabuf** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_ttls_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca %struct.wpabuf**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.eap_peer_config*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.wpabuf* %4, %struct.wpabuf** %12, align 8
  store %struct.wpabuf** %5, %struct.wpabuf*** %13, align 8
  %16 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %17 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %6
  %21 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %22 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %21, i32 0, i32 4
  %23 = load %struct.wpabuf*, %struct.wpabuf** %22, align 8
  %24 = icmp ne %struct.wpabuf* %23, null
  br i1 %24, label %25, label %64

25:                                               ; preds = %20
  %26 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %27 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %26)
  store %struct.eap_peer_config* %27, %struct.eap_peer_config** %15, align 8
  %28 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %29 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @EXT_CERT_CHECK_GOOD, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %37 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %36, i32 0, i32 4
  %38 = load %struct.wpabuf*, %struct.wpabuf** %37, align 8
  %39 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  store %struct.wpabuf* %38, %struct.wpabuf** %39, align 8
  %40 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %41 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %40, i32 0, i32 4
  store %struct.wpabuf* null, %struct.wpabuf** %41, align 8
  %42 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %43 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  store i32 0, i32* %7, align 4
  br label %181

44:                                               ; preds = %25
  %45 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %46 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EXT_CERT_CHECK_BAD, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i8*, i8** @METHOD_DONE, align 8
  %54 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %55 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @DECISION_FAIL, align 8
  %57 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %58 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %60 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  store i32 0, i32* %7, align 4
  br label %181

61:                                               ; preds = %44
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = call i32 @wpa_printf(i32 %62, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %181

64:                                               ; preds = %20, %6
  %65 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %66 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %67 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %66, i32 0, i32 3
  %68 = load i32, i32* @EAP_TYPE_TTLS, align 4
  %69 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %70 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %74 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %75 = call i32 @eap_peer_tls_process_helper(%struct.eap_sm* %65, %struct.TYPE_2__* %67, i32 %68, i32 %71, i32 %72, %struct.wpabuf* %73, %struct.wpabuf** %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %64
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = call i32 @wpa_printf(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i8*, i8** @METHOD_DONE, align 8
  %82 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %83 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @DECISION_FAIL, align 8
  %85 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %86 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  store i32 -1, i32* %7, align 4
  br label %181

87:                                               ; preds = %64
  %88 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %89 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = call i32 @wpa_printf(i32 %93, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %95 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %96 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %95, i32 0, i32 4
  %97 = load %struct.wpabuf*, %struct.wpabuf** %96, align 8
  %98 = call i32 @wpabuf_clear_free(%struct.wpabuf* %97)
  %99 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %100 = load %struct.wpabuf*, %struct.wpabuf** %99, align 8
  %101 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %102 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %101, i32 0, i32 4
  store %struct.wpabuf* %100, %struct.wpabuf** %102, align 8
  %103 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %103, align 8
  store i32 0, i32* %7, align 4
  br label %181

104:                                              ; preds = %87
  %105 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %106 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %109 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @tls_connection_established(i32 %107, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %159

114:                                              ; preds = %104
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = call i32 @wpa_printf(i32 %115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %117 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %118 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = load i32, i32* @MSG_DEBUG, align 4
  %123 = call i32 @wpa_printf(i32 %122, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i8*, i8** @DECISION_COND_SUCC, align 8
  %125 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %126 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** @METHOD_MAY_CONT, align 8
  %128 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %129 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %121, %114
  %131 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %132 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %134 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %135 = call i32 @eap_ttls_v0_derive_key(%struct.eap_sm* %133, %struct.eap_ttls_data* %134)
  %136 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %137 = load %struct.wpabuf*, %struct.wpabuf** %136, align 8
  %138 = icmp eq %struct.wpabuf* %137, null
  br i1 %138, label %144, label %139

139:                                              ; preds = %130
  %140 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %141 = load %struct.wpabuf*, %struct.wpabuf** %140, align 8
  %142 = call i64 @wpabuf_len(%struct.wpabuf* %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %139, %130
  %145 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %146 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %147 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %150 = call i32 @eap_ttls_decrypt(%struct.eap_sm* %145, %struct.eap_ttls_data* %146, %struct.eap_method_ret* %147, i32 %148, %struct.wpabuf* null, %struct.wpabuf** %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i32, i32* @MSG_WARNING, align 4
  %154 = call i32 @wpa_printf(i32 %153, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %144
  store i32 0, i32* %14, align 4
  br label %156

156:                                              ; preds = %155, %139
  %157 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %158 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %157, i32 0, i32 2
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %156, %104
  %160 = load i32, i32* %14, align 4
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %162, label %179

162:                                              ; preds = %159
  %163 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %164 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %163, i32 0, i32 1
  %165 = load %struct.wpabuf*, %struct.wpabuf** %164, align 8
  %166 = call i32 @wpabuf_clear_free(%struct.wpabuf* %165)
  %167 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %168 = load %struct.wpabuf*, %struct.wpabuf** %167, align 8
  %169 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %170 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %169, i32 0, i32 1
  store %struct.wpabuf* %168, %struct.wpabuf** %170, align 8
  %171 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %171, align 8
  %172 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %173 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %9, align 8
  %174 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %177 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %178 = call i32 @eap_ttls_decrypt(%struct.eap_sm* %172, %struct.eap_ttls_data* %173, %struct.eap_method_ret* %174, i32 %175, %struct.wpabuf* %176, %struct.wpabuf** %177)
  store i32 %178, i32* %14, align 4
  br label %179

179:                                              ; preds = %162, %159
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %179, %92, %78, %61, %50, %33
  %182 = load i32, i32* %7, align 4
  ret i32 %182
}

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_peer_tls_process_helper(%struct.eap_sm*, %struct.TYPE_2__*, i32, i32, i32, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i64 @tls_connection_established(i32, i32) #1

declare dso_local i32 @eap_ttls_v0_derive_key(%struct.eap_sm*, %struct.eap_ttls_data*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @eap_ttls_decrypt(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, %struct.wpabuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
