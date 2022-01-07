; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_derive_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_derive_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_initiator_data = type { i32, i32, i32, %struct.wpabuf*, %struct.wpabuf*, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.wpabuf = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ikev2_integ_alg = type { i32 }
%struct.ikev2_prf_alg = type { i32, i32 }
%struct.ikev2_encr_alg = type { i32 }

@IKEV2_MAX_HASH_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"IKEV2: Unsupported proposal\00", align 1
@IKEV2_SPI_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"IKEV2: SKEYSEED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_initiator_data*)* @ikev2_derive_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_derive_keys(%struct.ikev2_initiator_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ikev2_initiator_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca %struct.ikev2_integ_alg*, align 8
  %13 = alloca %struct.ikev2_prf_alg*, align 8
  %14 = alloca %struct.ikev2_encr_alg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32*], align 16
  %17 = alloca [2 x i64], align 16
  %18 = alloca i32, align 4
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %3, align 8
  %19 = load i32, i32* @IKEV2_MAX_HASH_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %24 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %23, i32 0, i32 10
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.ikev2_integ_alg* @ikev2_get_integ(i32 %26)
  store %struct.ikev2_integ_alg* %27, %struct.ikev2_integ_alg** %12, align 8
  %28 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %29 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %28, i32 0, i32 10
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.ikev2_prf_alg* @ikev2_get_prf(i32 %31)
  store %struct.ikev2_prf_alg* %32, %struct.ikev2_prf_alg** %13, align 8
  %33 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %34 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %33, i32 0, i32 10
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.ikev2_encr_alg* @ikev2_get_encr(i32 %36)
  store %struct.ikev2_encr_alg* %37, %struct.ikev2_encr_alg** %14, align 8
  %38 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %12, align 8
  %39 = icmp eq %struct.ikev2_integ_alg* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %1
  %41 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %13, align 8
  %42 = icmp eq %struct.ikev2_prf_alg* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load %struct.ikev2_encr_alg*, %struct.ikev2_encr_alg** %14, align 8
  %45 = icmp eq %struct.ikev2_encr_alg* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %40, %1
  %47 = load i32, i32* @MSG_INFO, align 4
  %48 = call i32 @wpa_printf(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %217

49:                                               ; preds = %43
  %50 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %51 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %50, i32 0, i32 4
  %52 = load %struct.wpabuf*, %struct.wpabuf** %51, align 8
  %53 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %54 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %53, i32 0, i32 3
  %55 = load %struct.wpabuf*, %struct.wpabuf** %54, align 8
  %56 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %57 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %56, i32 0, i32 5
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = call %struct.wpabuf* @dh_derive_shared(%struct.wpabuf* %52, %struct.wpabuf* %55, %struct.TYPE_4__* %58)
  store %struct.wpabuf* %59, %struct.wpabuf** %11, align 8
  %60 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %61 = icmp eq %struct.wpabuf* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %217

63:                                               ; preds = %49
  %64 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %65 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %68 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %72 = mul nsw i32 2, %71
  %73 = add nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32* @os_malloc(i64 %75)
  store i32* %76, i32** %4, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %63
  %80 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %81 = call i32 @wpabuf_free(%struct.wpabuf* %80)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %217

82:                                               ; preds = %63
  %83 = load i32*, i32** %4, align 8
  store i32* %83, i32** %5, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %86 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %89 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @os_memcpy(i32* %84, i32 %87, i32 %90)
  %92 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %93 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %5, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %100 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %103 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @os_memcpy(i32* %98, i32 %101, i32 %104)
  %106 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %107 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %5, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %114 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %117 = call i32 @os_memcpy(i32* %112, i32 %115, i32 %116)
  %118 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %5, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %124 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %127 = call i32 @os_memcpy(i32* %122, i32 %125, i32 %126)
  %128 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %129 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %128, i32 0, i32 5
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %134 = call i64 @wpabuf_len(%struct.wpabuf* %133)
  %135 = sub i64 %132, %134
  store i64 %135, i64* %10, align 8
  %136 = load i64, i64* %10, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %82
  %139 = load i64, i64* %10, align 8
  br label %141

140:                                              ; preds = %82
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i64 [ %139, %138 ], [ 1, %140 ]
  %143 = call i32* @os_zalloc(i64 %142)
  store i32* %143, i32** %6, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %148 = call i32 @wpabuf_free(%struct.wpabuf* %147)
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 @os_free(i32* %149)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %217

151:                                              ; preds = %141
  %152 = load i32*, i32** %6, align 8
  %153 = getelementptr inbounds [2 x i32*], [2 x i32*]* %16, i64 0, i64 0
  store i32* %152, i32** %153, align 16
  %154 = load i64, i64* %10, align 8
  %155 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 0
  store i64 %154, i64* %155, align 16
  %156 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %157 = call i32* @wpabuf_head(%struct.wpabuf* %156)
  %158 = getelementptr inbounds [2 x i32*], [2 x i32*]* %16, i64 0, i64 1
  store i32* %157, i32** %158, align 8
  %159 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %160 = call i64 @wpabuf_len(%struct.wpabuf* %159)
  %161 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 1
  store i64 %160, i64* %161, align 8
  %162 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %13, align 8
  %163 = getelementptr inbounds %struct.ikev2_prf_alg, %struct.ikev2_prf_alg* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %4, align 8
  %166 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %167 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %170 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %168, %171
  %173 = getelementptr inbounds [2 x i32*], [2 x i32*]* %16, i64 0, i64 0
  %174 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 0
  %175 = call i64 @ikev2_prf_hash(i32 %164, i32* %165, i32 %172, i32 2, i32** %173, i64* %174, i32* %22)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %151
  %178 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %179 = call i32 @wpabuf_free(%struct.wpabuf* %178)
  %180 = load i32*, i32** %4, align 8
  %181 = call i32 @os_free(i32* %180)
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @os_free(i32* %182)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %217

184:                                              ; preds = %151
  %185 = load i32*, i32** %6, align 8
  %186 = call i32 @os_free(i32* %185)
  %187 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %188 = call i32 @wpabuf_free(%struct.wpabuf* %187)
  %189 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %190 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %189, i32 0, i32 4
  %191 = load %struct.wpabuf*, %struct.wpabuf** %190, align 8
  %192 = call i32 @wpabuf_free(%struct.wpabuf* %191)
  %193 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %194 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %193, i32 0, i32 4
  store %struct.wpabuf* null, %struct.wpabuf** %194, align 8
  %195 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %196 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %195, i32 0, i32 3
  %197 = load %struct.wpabuf*, %struct.wpabuf** %196, align 8
  %198 = call i32 @wpabuf_free(%struct.wpabuf* %197)
  %199 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %200 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %199, i32 0, i32 3
  store %struct.wpabuf* null, %struct.wpabuf** %200, align 8
  %201 = load i32, i32* @MSG_DEBUG, align 4
  %202 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %13, align 8
  %203 = getelementptr inbounds %struct.ikev2_prf_alg, %struct.ikev2_prf_alg* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @wpa_hexdump_key(i32 %201, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %22, i32 %204)
  %206 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %13, align 8
  %207 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %12, align 8
  %208 = load %struct.ikev2_encr_alg*, %struct.ikev2_encr_alg** %14, align 8
  %209 = load i32*, i32** %4, align 8
  %210 = load i64, i64* %9, align 8
  %211 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %212 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %211, i32 0, i32 2
  %213 = call i32 @ikev2_derive_sk_keys(%struct.ikev2_prf_alg* %206, %struct.ikev2_integ_alg* %207, %struct.ikev2_encr_alg* %208, i32* %22, i32* %209, i64 %210, i32* %212)
  store i32 %213, i32* %15, align 4
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 @os_free(i32* %214)
  %216 = load i32, i32* %15, align 4
  store i32 %216, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %217

217:                                              ; preds = %184, %177, %146, %79, %62, %46
  %218 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %218)
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ikev2_integ_alg* @ikev2_get_integ(i32) #2

declare dso_local %struct.ikev2_prf_alg* @ikev2_get_prf(i32) #2

declare dso_local %struct.ikev2_encr_alg* @ikev2_get_encr(i32) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local %struct.wpabuf* @dh_derive_shared(%struct.wpabuf*, %struct.wpabuf*, %struct.TYPE_4__*) #2

declare dso_local i32* @os_malloc(i64) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i32 @os_memcpy(i32*, i32, i32) #2

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32* @os_zalloc(i64) #2

declare dso_local i32 @os_free(i32*) #2

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i64 @ikev2_prf_hash(i32, i32*, i32, i32, i32**, i64*, i32*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i32 @ikev2_derive_sk_keys(%struct.ikev2_prf_alg*, %struct.ikev2_integ_alg*, %struct.ikev2_encr_alg*, i32*, i32*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
