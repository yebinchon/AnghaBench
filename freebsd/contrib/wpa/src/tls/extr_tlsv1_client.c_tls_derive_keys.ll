; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tls_derive_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tls_derive_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { %struct.TYPE_2__, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32* }

@TLS_RANDOM_LEN = common dso_local global i32 0, align 4
@TLS_MAX_KEY_BLOCK_LEN = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"TLSv1: pre_master_secret\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"master secret\00", align 1
@TLS_MASTER_SECRET_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"TLSv1: Failed to derive master_secret\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"TLSv1: master_secret\00", align 1
@TLS_VERSION_1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"key expansion\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"TLSv1: Failed to derive key_block\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"TLSv1: key_block\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_derive_keys(%struct.tlsv1_client* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %15 = mul nsw i32 2, %14
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @TLS_MAX_KEY_BLOCK_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %66

24:                                               ; preds = %3
  %25 = load i32, i32* @MSG_MSGDUMP, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @wpa_hexdump_key(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %26, i64 %27)
  %29 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %30 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %33 = call i32 @os_memcpy(i32* %18, i32* %31, i32 %32)
  %34 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %18, i64 %35
  %37 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %38 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %41 = call i32 @os_memcpy(i32* %36, i32* %39, i32 %40)
  %42 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %43 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %49 = mul nsw i32 2, %48
  %50 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %51 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @TLS_MASTER_SECRET_LEN, align 8
  %54 = call i64 @tls_prf(i64 %45, i32* %46, i64 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %18, i32 %49, i32* %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %24
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %240

59:                                               ; preds = %24
  %60 = load i32, i32* @MSG_MSGDUMP, align 4
  %61 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %62 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @TLS_MASTER_SECRET_LEN, align 8
  %65 = call i32 @wpa_hexdump_key(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %63, i64 %64)
  br label %66

66:                                               ; preds = %59, %3
  %67 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %68 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %71 = call i32 @os_memcpy(i32* %18, i32* %69, i32 %70)
  %72 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %18, i64 %73
  %75 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %76 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %79 = call i32 @os_memcpy(i32* %74, i32* %77, i32 %78)
  %80 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %81 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %85 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %83, %87
  %89 = mul nsw i32 2, %88
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %12, align 8
  %91 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %92 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TLS_VERSION_1, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %66
  %98 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %99 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 2, %101
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %12, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %12, align 8
  br label %106

106:                                              ; preds = %97, %66
  %107 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %108 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %112 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @TLS_MASTER_SECRET_LEN, align 8
  %115 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %116 = mul nsw i32 2, %115
  %117 = load i64, i64* %12, align 8
  %118 = call i64 @tls_prf(i64 %110, i32* %113, i64 %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %18, i32 %116, i32* %21, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %106
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = call i32 @wpa_printf(i32 %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %240

123:                                              ; preds = %106
  %124 = load i32, i32* @MSG_MSGDUMP, align 4
  %125 = load i64, i64* %12, align 8
  %126 = call i32 @wpa_hexdump_key(i32 %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %21, i64 %125)
  store i32* %21, i32** %11, align 8
  %127 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %128 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 9
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %133 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @os_memcpy(i32* %130, i32* %131, i32 %135)
  %137 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %138 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %11, align 8
  %144 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %145 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 8
  %147 = load i32*, i32** %146, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %150 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @os_memcpy(i32* %147, i32* %148, i32 %152)
  %154 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %155 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32*, i32** %11, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %11, align 8
  %161 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %162 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 7
  %164 = load i32*, i32** %163, align 8
  %165 = load i32*, i32** %11, align 8
  %166 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %167 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @os_memcpy(i32* %164, i32* %165, i32 %169)
  %171 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %172 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %11, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %11, align 8
  %178 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %179 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 6
  %181 = load i32*, i32** %180, align 8
  %182 = load i32*, i32** %11, align 8
  %183 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %184 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @os_memcpy(i32* %181, i32* %182, i32 %186)
  %188 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %189 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %11, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %11, align 8
  %195 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %196 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @TLS_VERSION_1, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %229

201:                                              ; preds = %123
  %202 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %203 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load i32*, i32** %11, align 8
  %207 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %208 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @os_memcpy(i32* %205, i32* %206, i32 %210)
  %212 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %213 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load i32*, i32** %11, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %11, align 8
  %219 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %220 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 5
  %222 = load i32*, i32** %221, align 8
  %223 = load i32*, i32** %11, align 8
  %224 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %225 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @os_memcpy(i32* %222, i32* %223, i32 %227)
  br label %239

229:                                              ; preds = %123
  %230 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %231 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  %234 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %235 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @os_memset(i32* %233, i32 0, i32 %237)
  br label %239

239:                                              ; preds = %229, %201
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %240

240:                                              ; preds = %239, %120, %56
  %241 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i64 @tls_prf(i64, i32*, i64, i8*, i32*, i32, i32*, i64) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
