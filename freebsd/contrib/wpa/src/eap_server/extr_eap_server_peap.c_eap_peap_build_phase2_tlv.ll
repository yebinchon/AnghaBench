; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_build_phase2_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_build_phase2_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i32, i64, i64, i32, i32, i32, i32*, i32, %struct.wpabuf* }

@TLV_REQ_SUCCESS = common dso_local global i64 0, align 8
@NO_BINDING = common dso_local global i64 0, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_TLV = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@EAP_TLV_RESULT_TLV = common dso_local global i32 0, align 4
@EAP_TLV_RESULT_SUCCESS = common dso_local global i32 0, align 4
@EAP_TLV_RESULT_FAILURE = common dso_local global i32 0, align 4
@EAP_TYPE_PEAP = common dso_local global i32 0, align 4
@EAP_TLV_CRYPTO_BINDING_TLV = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EAP-PEAP: Compound_MAC CMK\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"EAP-PEAP: Compound_MAC data 1\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"EAP-PEAP: Compound_MAC data 2\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"EAP-PEAP: Compound_MAC\00", align 1
@SHA1_MAC_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"EAP-PEAP: Encrypting Phase 2 TLV data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_peap_data*, i32)* @eap_peap_build_phase2_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_peap_build_phase2_tlv(%struct.eap_sm* %0, %struct.eap_peap_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_peap_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32*], align 16
  %14 = alloca [2 x i64], align 16
  %15 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 6, i64* %10, align 8
  %16 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %17 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %22 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TLV_REQ_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %28 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NO_BINDING, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 60
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %32, %26, %20, %3
  %36 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %37 = load i32, i32* @EAP_TYPE_TLV, align 4
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.wpabuf* @eap_msg_alloc(i32 %36, i32 %37, i64 %38, i32 %39, i32 %40)
  store %struct.wpabuf* %41, %struct.wpabuf** %8, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %43 = icmp eq %struct.wpabuf* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %173

45:                                               ; preds = %35
  %46 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %47 = call i32 @wpabuf_put_u8(%struct.wpabuf* %46, i32 128)
  %48 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %49 = load i32, i32* @EAP_TLV_RESULT_TLV, align 4
  %50 = call i32 @wpabuf_put_u8(%struct.wpabuf* %48, i32 %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %52 = call i32 @wpabuf_put_be16(%struct.wpabuf* %51, i32 2)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %54 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %55 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TLV_REQ_SUCCESS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* @EAP_TLV_RESULT_SUCCESS, align 4
  br label %63

61:                                               ; preds = %45
  %62 = load i32, i32* @EAP_TLV_RESULT_FAILURE, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @wpabuf_put_be16(%struct.wpabuf* %53, i32 %64)
  %66 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %67 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %161

70:                                               ; preds = %63
  %71 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %72 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TLV_REQ_SUCCESS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %161

76:                                               ; preds = %70
  %77 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %78 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NO_BINDING, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %161

82:                                               ; preds = %76
  %83 = load i32, i32* @EAP_TYPE_PEAP, align 4
  store i32 %83, i32* %12, align 4
  %84 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %85 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %86 = call i64 @eap_peap_derive_cmk(%struct.eap_sm* %84, %struct.eap_peap_data* %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %90 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @random_get_bytes(i32 %91, i32 32)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88, %82
  %95 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %96 = call i32 @wpabuf_free(%struct.wpabuf* %95)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %173

97:                                               ; preds = %88
  %98 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %99 = call i32* @wpabuf_put(%struct.wpabuf* %98, i32 0)
  %100 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 0
  store i32* %99, i32** %100, align 16
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  store i64 60, i64* %101, align 16
  %102 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 1
  store i32* %12, i32** %102, align 8
  %103 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  store i64 1, i64* %103, align 8
  %104 = load i32, i32* @EAP_TLV_CRYPTO_BINDING_TLV, align 4
  store i32 %104, i32* %15, align 4
  %105 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @wpabuf_put_be16(%struct.wpabuf* %105, i32 %106)
  %108 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %109 = call i32 @wpabuf_put_be16(%struct.wpabuf* %108, i32 56)
  %110 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %111 = call i32 @wpabuf_put_u8(%struct.wpabuf* %110, i32 0)
  %112 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %113 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %114 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @wpabuf_put_u8(%struct.wpabuf* %112, i32 %115)
  %117 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %118 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %119 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @wpabuf_put_u8(%struct.wpabuf* %117, i32 %120)
  %122 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %123 = call i32 @wpabuf_put_u8(%struct.wpabuf* %122, i32 0)
  %124 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %125 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %126 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @wpabuf_put_data(%struct.wpabuf* %124, i32 %127, i32 32)
  %129 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %130 = call i32* @wpabuf_put(%struct.wpabuf* %129, i32 20)
  store i32* %130, i32** %11, align 8
  %131 = load i32, i32* @MSG_MSGDUMP, align 4
  %132 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %133 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %132, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @wpa_hexdump(i32 %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %134, i64 20)
  %136 = load i32, i32* @MSG_MSGDUMP, align 4
  %137 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 0
  %138 = load i32*, i32** %137, align 16
  %139 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %140 = load i64, i64* %139, align 16
  %141 = call i32 @wpa_hexdump(i32 %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %138, i64 %140)
  %142 = load i32, i32* @MSG_MSGDUMP, align 4
  %143 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @wpa_hexdump(i32 %142, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %144, i64 %146)
  %148 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %149 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %148, i32 0, i32 6
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 0
  %152 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %153 = load i32*, i32** %11, align 8
  %154 = call i32 @hmac_sha1_vector(i32* %150, i32 20, i32 2, i32** %151, i64* %152, i32* %153)
  %155 = load i32, i32* @MSG_MSGDUMP, align 4
  %156 = load i32*, i32** %11, align 8
  %157 = load i64, i64* @SHA1_MAC_LEN, align 8
  %158 = call i32 @wpa_hexdump(i32 %155, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %156, i64 %157)
  %159 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %160 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %159, i32 0, i32 4
  store i32 1, i32* %160, align 4
  br label %161

161:                                              ; preds = %97, %76, %70, %63
  %162 = load i32, i32* @MSG_DEBUG, align 4
  %163 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %164 = call i32 @wpa_hexdump_buf_key(i32 %162, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), %struct.wpabuf* %163)
  %165 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %166 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %167 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %166, i32 0, i32 5
  %168 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %169 = call %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm* %165, i32* %167, %struct.wpabuf* %168)
  store %struct.wpabuf* %169, %struct.wpabuf** %9, align 8
  %170 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %171 = call i32 @wpabuf_free(%struct.wpabuf* %170)
  %172 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %172, %struct.wpabuf** %4, align 8
  br label %173

173:                                              ; preds = %161, %94, %44
  %174 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %174
}

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i64 @eap_peap_derive_cmk(%struct.eap_sm*, %struct.eap_peap_data*) #1

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @hmac_sha1_vector(i32*, i32, i32, i32**, i64*, i32*) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm*, i32*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
