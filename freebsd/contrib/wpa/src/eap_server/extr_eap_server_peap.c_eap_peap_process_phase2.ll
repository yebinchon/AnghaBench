; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_process_phase2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_process_phase2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i64, i64, %struct.TYPE_2__, %struct.wpabuf* }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type opaque
%struct.eap_hdr = type { i64, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"EAP-PEAP: received %lu bytes encrypted data for Phase 2\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"EAP-PEAP: Pending Phase 2 response - skip decryption and use old data\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"EAP-PEAP: Failed to decrypt Phase 2 data\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"EAP-PEAP: Decrypted Phase 2 EAP\00", align 1
@PHASE2_TLV = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"EAP-PEAP: Too short Phase 2 EAP frame (len=%lu)\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"EAP-PEAP: Length mismatch in Phase 2 EAP frame (len=%lu hdr->length=%lu)\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"EAP-PEAP: received Phase 2: code=%d identifier=%d length=%lu\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"EAP-PEAP: Phase 2 Success\00", align 1
@SUCCESS_REQ = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"EAP-PEAP: Phase 2 Failure\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"EAP-PEAP: Unexpected code=%d in Phase 2 EAP header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_peap_data*, %struct.wpabuf*, %struct.wpabuf*)* @eap_peap_process_phase2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peap_process_phase2(%struct.eap_sm* %0, %struct.eap_peap_data* %1, %struct.wpabuf* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_peap_data*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.eap_hdr*, align 8
  %13 = alloca %struct.eap_hdr*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %8, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %17 = call i64 @wpabuf_len(%struct.wpabuf* %16)
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %20 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %19, i32 0, i32 3
  %21 = load %struct.wpabuf*, %struct.wpabuf** %20, align 8
  %22 = icmp ne %struct.wpabuf* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %4
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %27 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %28 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %29 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %28, i32 0, i32 3
  %30 = load %struct.wpabuf*, %struct.wpabuf** %29, align 8
  %31 = call i32 @eap_peap_process_phase2_response(%struct.eap_sm* %26, %struct.eap_peap_data* %27, %struct.wpabuf* %30)
  %32 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %33 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %32, i32 0, i32 3
  %34 = load %struct.wpabuf*, %struct.wpabuf** %33, align 8
  %35 = call i32 @wpabuf_free(%struct.wpabuf* %34)
  %36 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %37 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %36, i32 0, i32 3
  store %struct.wpabuf* null, %struct.wpabuf** %37, align 8
  br label %192

38:                                               ; preds = %4
  %39 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %40 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %43 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %47 = call %struct.wpabuf* @tls_connection_decrypt(i32 %41, i32 %45, %struct.wpabuf* %46)
  store %struct.wpabuf* %47, %struct.wpabuf** %9, align 8
  %48 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %49 = icmp eq %struct.wpabuf* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load i32, i32* @MSG_INFO, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %54 = load i32, i32* @FAILURE, align 4
  %55 = call i32 @eap_peap_state(%struct.eap_peap_data* %53, i32 %54)
  br label %192

56:                                               ; preds = %38
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %59 = call i32 @wpa_hexdump_buf_key(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), %struct.wpabuf* %58)
  %60 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %61 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %107

64:                                               ; preds = %56
  %65 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %66 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PHASE2_TLV, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %64
  %71 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %72 = call i64 @wpabuf_len(%struct.wpabuf* %71)
  %73 = add i64 16, %72
  %74 = call %struct.wpabuf* @wpabuf_alloc(i64 %73)
  store %struct.wpabuf* %74, %struct.wpabuf** %14, align 8
  %75 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %76 = icmp eq %struct.wpabuf* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %79 = call i32 @wpabuf_free(%struct.wpabuf* %78)
  br label %192

80:                                               ; preds = %70
  %81 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %82 = call %struct.eap_hdr* @wpabuf_head(%struct.wpabuf* %81)
  store %struct.eap_hdr* %82, %struct.eap_hdr** %12, align 8
  %83 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %84 = call %struct.eap_hdr* @wpabuf_put(%struct.wpabuf* %83, i32 16)
  store %struct.eap_hdr* %84, %struct.eap_hdr** %13, align 8
  %85 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %86 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %89 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %91 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %94 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %96 = call i64 @wpabuf_len(%struct.wpabuf* %95)
  %97 = add i64 16, %96
  %98 = call i32 @host_to_be16(i64 %97)
  %99 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %100 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %102 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %103 = call i32 @wpabuf_put_buf(%struct.wpabuf* %101, %struct.wpabuf* %102)
  %104 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %105 = call i32 @wpabuf_free(%struct.wpabuf* %104)
  %106 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %106, %struct.wpabuf** %9, align 8
  br label %107

107:                                              ; preds = %80, %64, %56
  %108 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %109 = call %struct.eap_hdr* @wpabuf_head(%struct.wpabuf* %108)
  store %struct.eap_hdr* %109, %struct.eap_hdr** %10, align 8
  %110 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %111 = call i64 @wpabuf_len(%struct.wpabuf* %110)
  %112 = icmp ult i64 %111, 16
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load i32, i32* @MSG_INFO, align 4
  %115 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %116 = call i64 @wpabuf_len(%struct.wpabuf* %115)
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i64 %116)
  %118 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %119 = call i32 @wpabuf_free(%struct.wpabuf* %118)
  %120 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %121 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %122 = call i32 @eap_peap_req_failure(%struct.eap_sm* %120, %struct.eap_peap_data* %121)
  br label %192

123:                                              ; preds = %107
  %124 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %125 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @be_to_host16(i32 %126)
  store i64 %127, i64* %11, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %130 = call i64 @wpabuf_len(%struct.wpabuf* %129)
  %131 = icmp ugt i64 %128, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %123
  %133 = load i32, i32* @MSG_INFO, align 4
  %134 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %135 = call i64 @wpabuf_len(%struct.wpabuf* %134)
  %136 = load i64, i64* %11, align 8
  %137 = call i32 (i32, i8*, ...) @wpa_printf(i32 %133, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i64 %135, i64 %136)
  %138 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %139 = call i32 @wpabuf_free(%struct.wpabuf* %138)
  %140 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %141 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %142 = call i32 @eap_peap_req_failure(%struct.eap_sm* %140, %struct.eap_peap_data* %141)
  br label %192

143:                                              ; preds = %123
  %144 = load i32, i32* @MSG_DEBUG, align 4
  %145 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %146 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %149 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* %11, align 8
  %152 = call i32 (i32, i8*, ...) @wpa_printf(i32 %144, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i64 %147, i32 %150, i64 %151)
  %153 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %154 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  switch i64 %155, label %183 [
    i64 129, label %156
    i64 128, label %161
    i64 130, label %177
  ]

156:                                              ; preds = %143
  %157 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %158 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %159 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %160 = call i32 @eap_peap_process_phase2_response(%struct.eap_sm* %157, %struct.eap_peap_data* %158, %struct.wpabuf* %159)
  br label %189

161:                                              ; preds = %143
  %162 = load i32, i32* @MSG_DEBUG, align 4
  %163 = call i32 (i32, i8*, ...) @wpa_printf(i32 %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %164 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %165 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @SUCCESS_REQ, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %161
  %170 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %171 = load i32, i32* @SUCCESS, align 4
  %172 = call i32 @eap_peap_state(%struct.eap_peap_data* %170, i32 %171)
  %173 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %174 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %175 = call i32 @eap_peap_valid_session(%struct.eap_sm* %173, %struct.eap_peap_data* %174)
  br label %176

176:                                              ; preds = %169, %161
  br label %189

177:                                              ; preds = %143
  %178 = load i32, i32* @MSG_DEBUG, align 4
  %179 = call i32 (i32, i8*, ...) @wpa_printf(i32 %178, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %180 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %181 = load i32, i32* @FAILURE, align 4
  %182 = call i32 @eap_peap_state(%struct.eap_peap_data* %180, i32 %181)
  br label %189

183:                                              ; preds = %143
  %184 = load i32, i32* @MSG_INFO, align 4
  %185 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %186 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 (i32, i8*, ...) @wpa_printf(i32 %184, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i64 %187)
  br label %189

189:                                              ; preds = %183, %177, %176, %156
  %190 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %191 = call i32 @wpabuf_free(%struct.wpabuf* %190)
  br label %192

192:                                              ; preds = %189, %132, %113, %77, %50, %23
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @eap_peap_process_phase2_response(%struct.eap_sm*, %struct.eap_peap_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @tls_connection_decrypt(i32, i32, %struct.wpabuf*) #1

declare dso_local i32 @eap_peap_state(%struct.eap_peap_data*, i32) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local %struct.eap_hdr* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local %struct.eap_hdr* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @host_to_be16(i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @eap_peap_req_failure(%struct.eap_sm*, %struct.eap_peap_data*) #1

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i32 @eap_peap_valid_session(%struct.eap_sm*, %struct.eap_peap_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
