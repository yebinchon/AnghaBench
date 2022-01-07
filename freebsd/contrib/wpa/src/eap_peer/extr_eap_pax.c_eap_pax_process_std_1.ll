; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pax.c_eap_pax_process_std_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pax.c_eap_pax_process_std_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_pax_data = type { i64, i32, i32, i32, i32, i32, i32*, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.eap_method_ret = type { i8* }
%struct.eap_pax_hdr = type { i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"EAP-PAX: PAX_STD-1 (received)\00", align 1
@PAX_INIT = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"EAP-PAX: PAX_STD-1 received in unexpected state (%d) - ignored\00", align 1
@TRUE = common dso_local global i8* null, align 8
@EAP_PAX_FLAGS_CE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"EAP-PAX: PAX_STD-1 with CE flag set - ignored\00", align 1
@EAP_PAX_RAND_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"EAP-PAX: PAX_STD-1 with too short payload\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"EAP-PAX: PAX_STD-1 with incorrect A length %d (expected %d)\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"EAP-PAX: X (server rand)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"EAP-PAX: ignored extra payload\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"EAP-PAX: Failed to get random data\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"EAP-PAX: Y (client rand)\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"EAP-PAX: PAX_STD-2 (sending)\00", align 1
@EAP_PAX_MAC_LEN = common dso_local global i32 0, align 4
@EAP_PAX_ICV_LEN = common dso_local global i32 0, align 4
@EAP_PAX_OP_STD_2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"EAP-PAX: B = Y (client rand)\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"EAP-PAX: CID\00", align 1
@EAP_PAX_CK_LEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"EAP-PAX: MAC_CK(A, B, CID)\00", align 1
@EAP_PAX_ICK_LEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"EAP-PAX: ICV\00", align 1
@PAX_STD_2_SENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_pax_data*, %struct.eap_method_ret*, i32, %struct.eap_pax_hdr*, i64)* @eap_pax_process_std_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_pax_process_std_1(%struct.eap_pax_data* %0, %struct.eap_method_ret* %1, i32 %2, %struct.eap_pax_hdr* %3, i64 %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_pax_data*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.eap_pax_hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.eap_pax_data* %0, %struct.eap_pax_data** %7, align 8
  store %struct.eap_method_ret* %1, %struct.eap_method_ret** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.eap_pax_hdr* %3, %struct.eap_pax_hdr** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %20 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAX_INIT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %27 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i8*, i8** @TRUE, align 8
  %31 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %32 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %309

33:                                               ; preds = %5
  %34 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %10, align 8
  %35 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EAP_PAX_FLAGS_CE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* @MSG_INFO, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i8*, i8** @TRUE, align 8
  %44 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %45 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %309

46:                                               ; preds = %33
  %47 = load i64, i64* %11, align 8
  %48 = sub i64 %47, 16
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %51 = add nsw i32 2, %50
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i32, i32* @MSG_INFO, align 4
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i8*, i8** @TRUE, align 8
  %58 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %59 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %309

60:                                               ; preds = %46
  %61 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %10, align 8
  %62 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %61, i64 1
  %63 = bitcast %struct.eap_pax_hdr* %62 to i32*
  store i32* %63, i32** %13, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @WPA_GET_BE16(i32* %64)
  %66 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = load i32, i32* @MSG_INFO, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @WPA_GET_BE16(i32* %70)
  %72 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i8*, i8** @TRUE, align 8
  %75 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %76 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %309

77:                                               ; preds = %60
  %78 = load i32*, i32** %13, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32* %79, i32** %13, align 8
  %80 = load i64, i64* %15, align 8
  %81 = sub i64 %80, 2
  store i64 %81, i64* %15, align 8
  %82 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %83 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %89 = call i32 @os_memcpy(i32* %86, i32* %87, i32 %88)
  %90 = load i32, i32* @MSG_MSGDUMP, align 4
  %91 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %92 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %97 = call i32 @wpa_hexdump(i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* %95, i32 %96)
  %98 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %13, align 8
  %102 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %15, align 8
  %105 = sub i64 %104, %103
  store i64 %105, i64* %15, align 8
  %106 = load i64, i64* %15, align 8
  %107 = icmp ugt i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %77
  %109 = load i32, i32* @MSG_MSGDUMP, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = load i64, i64* %15, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @wpa_hexdump(i32 %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32* %110, i32 %112)
  br label %114

114:                                              ; preds = %108, %77
  %115 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %116 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %121 = call i64 @random_get_bytes(i32* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %114
  %124 = load i32, i32* @MSG_ERROR, align 4
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %126 = load i8*, i8** @TRUE, align 8
  %127 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %128 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %309

129:                                              ; preds = %114
  %130 = load i32, i32* @MSG_MSGDUMP, align 4
  %131 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %132 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %137 = call i32 @wpa_hexdump(i32 %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32* %135, i32 %136)
  %138 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %10, align 8
  %139 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %142 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %141, i32 0, i32 11
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %145 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %144, i32 0, i32 7
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %149 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %148, i32 0, i32 10
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %152 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %155 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %158 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @eap_pax_initial_key_derivation(i32 %140, i32 %143, i32 %147, i32 %150, i32 %153, i32 %156, i32 %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %129
  %163 = load i8*, i8** @TRUE, align 8
  %164 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %165 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %309

166:                                              ; preds = %129
  %167 = load i32, i32* @MSG_DEBUG, align 4
  %168 = call i32 (i32, i8*, ...) @wpa_printf(i32 %167, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %169 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %170 = add nsw i32 2, %169
  %171 = add nsw i32 %170, 2
  %172 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %173 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %171, %174
  %176 = add nsw i32 %175, 2
  %177 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %178 = add nsw i32 %176, %177
  %179 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %180 = add nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %16, align 8
  %182 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %10, align 8
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @EAP_PAX_OP_STD_2, align 4
  %185 = load i64, i64* %16, align 8
  %186 = call %struct.wpabuf* @eap_pax_alloc_resp(%struct.eap_pax_hdr* %182, i32 %183, i32 %184, i64 %185)
  store %struct.wpabuf* %186, %struct.wpabuf** %12, align 8
  %187 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %188 = icmp eq %struct.wpabuf* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %166
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %309

190:                                              ; preds = %166
  %191 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %192 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %193 = call i32 @wpabuf_put_be16(%struct.wpabuf* %191, i32 %192)
  %194 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %195 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %196 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %195, i32 0, i32 7
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %201 = call i32 @wpabuf_put_data(%struct.wpabuf* %194, i32* %199, i32 %200)
  %202 = load i32, i32* @MSG_MSGDUMP, align 4
  %203 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %204 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %209 = call i32 @wpa_hexdump(i32 %202, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32* %207, i32 %208)
  %210 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %211 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %212 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @wpabuf_put_be16(%struct.wpabuf* %210, i32 %213)
  %215 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %216 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %217 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %216, i32 0, i32 6
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %220 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @wpabuf_put_data(%struct.wpabuf* %215, i32* %218, i32 %221)
  %223 = load i32, i32* @MSG_MSGDUMP, align 4
  %224 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %225 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %224, i32 0, i32 6
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %228 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @wpa_hexdump_ascii(i32 %223, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32* %226, i32 %229)
  %231 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %232 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %233 = call i32 @wpabuf_put_be16(%struct.wpabuf* %231, i32 %232)
  %234 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %235 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %236 = call i32* @wpabuf_put(%struct.wpabuf* %234, i32 %235)
  store i32* %236, i32** %14, align 8
  %237 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %10, align 8
  %238 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %241 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %240, i32 0, i32 8
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @EAP_PAX_CK_LEN, align 4
  %244 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %245 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %244, i32 0, i32 7
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %250 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %251 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %250, i32 0, i32 7
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %256 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %257 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %256, i32 0, i32 6
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %260 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load i32*, i32** %14, align 8
  %263 = call i32 @eap_pax_mac(i32 %239, i32 %242, i32 %243, i32* %248, i32 %249, i32* %254, i32 %255, i32* %258, i32 %261, i32* %262)
  %264 = load i32, i32* @MSG_MSGDUMP, align 4
  %265 = load i32*, i32** %14, align 8
  %266 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %267 = call i32 @wpa_hexdump(i32 %264, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32* %265, i32 %266)
  %268 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %269 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %270 = call i32* @wpabuf_put(%struct.wpabuf* %268, i32 %269)
  store i32* %270, i32** %14, align 8
  %271 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %10, align 8
  %272 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %275 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @EAP_PAX_ICK_LEN, align 4
  %278 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %279 = call i32* @wpabuf_head(%struct.wpabuf* %278)
  %280 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %281 = call i32 @wpabuf_len(%struct.wpabuf* %280)
  %282 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %283 = sub nsw i32 %281, %282
  %284 = load i32*, i32** %14, align 8
  %285 = call i32 @eap_pax_mac(i32 %273, i32 %276, i32 %277, i32* %279, i32 %283, i32* null, i32 0, i32* null, i32 0, i32* %284)
  %286 = load i32, i32* @MSG_MSGDUMP, align 4
  %287 = load i32*, i32** %14, align 8
  %288 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %289 = call i32 @wpa_hexdump(i32 %286, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32* %287, i32 %288)
  %290 = load i64, i64* @PAX_STD_2_SENT, align 8
  %291 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %292 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %291, i32 0, i32 0
  store i64 %290, i64* %292, align 8
  %293 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %10, align 8
  %294 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %297 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %296, i32 0, i32 4
  store i32 %295, i32* %297, align 4
  %298 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %10, align 8
  %299 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %302 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %301, i32 0, i32 3
  store i32 %300, i32* %302, align 8
  %303 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %10, align 8
  %304 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %307 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %306, i32 0, i32 2
  store i32 %305, i32* %307, align 4
  %308 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %308, %struct.wpabuf** %6, align 8
  br label %309

309:                                              ; preds = %190, %189, %162, %123, %68, %54, %40, %24
  %310 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %310
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i64 @random_get_bytes(i32*, i32) #1

declare dso_local i64 @eap_pax_initial_key_derivation(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.wpabuf* @eap_pax_alloc_resp(%struct.eap_pax_hdr*, i32, i32, i64) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @eap_pax_mac(i32, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
