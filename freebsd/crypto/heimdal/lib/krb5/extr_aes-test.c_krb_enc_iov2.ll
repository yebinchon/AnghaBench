; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_aes-test.c_krb_enc_iov2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_aes-test.c_krb_enc_iov2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i8* }

@KRB5_CRYPTO_TYPE_HEADER = common dso_local global i32 0, align 4
@KRB5_CRYPTO_TYPE_DATA = common dso_local global i32 0, align 4
@KRB5_CRYPTO_TYPE_PADDING = common dso_local global i32 0, align 4
@KRB5_CRYPTO_TYPE_TRAILER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"encrypt iov failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cipher len wrong\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"krb5_decrypt\00", align 1
@KRB5_CRYPTO_TYPE_EMPTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"decrypt iov failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"length incorrect\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"iov[1] incorrect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64, %struct.TYPE_10__*)* @krb_enc_iov2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb_enc_iov2(i32 %0, i32 %1, i32 %2, i64 %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca [4 x %struct.TYPE_11__], align 16
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %10, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %14, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %16, align 8
  %24 = load i32, i32* @KRB5_CRYPTO_TYPE_HEADER, align 4
  %25 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 16
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 16
  %32 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = call i32 @krb5_crypto_length(i32 %27, i32 %28, i32 %31, i64* %34)
  %36 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 16
  %40 = call i8* @emalloc(i64 %39)
  %41 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* @KRB5_CRYPTO_TYPE_DATA, align 4
  %45 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* %16, align 8
  %48 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @emalloc(i64 %54)
  %56 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i8* %55, i8** %58, align 8
  %59 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @memcpy(i8* %62, i8* %63, i64 %67)
  %69 = load i32, i32* @KRB5_CRYPTO_TYPE_PADDING, align 4
  %70 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 16
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @KRB5_CRYPTO_TYPE_PADDING, align 4
  %75 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 2
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = call i32 @krb5_crypto_length(i32 %72, i32 %73, i32 %74, i64* %77)
  %79 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 2
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 16
  %83 = call i8* @emalloc(i64 %82)
  %84 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 2
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i8* %83, i8** %86, align 8
  %87 = load i32, i32* @KRB5_CRYPTO_TYPE_TRAILER, align 4
  %88 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 3
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 3
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 3
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = call i32 @krb5_crypto_length(i32 %90, i32 %91, i32 %94, i64* %97)
  %99 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 3
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i8* @emalloc(i64 %102)
  %104 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 3
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %111 = call i32 @krb5_encrypt_iov_ivec(i32 %107, i32 %108, i32 %109, %struct.TYPE_11__* %110, i32 4, i32* null)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %5
  %115 = load i32, i32* %13, align 4
  %116 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %114, %5
  store i64 0, i64* %17, align 8
  store i64 0, i64* %16, align 8
  br label %118

118:                                              ; preds = %129, %117
  %119 = load i64, i64* %17, align 8
  %120 = icmp ult i64 %119, 4
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = load i64, i64* %17, align 8
  %123 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %16, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %16, align 8
  br label %129

129:                                              ; preds = %121
  %130 = load i64, i64* %17, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %17, align 8
  br label %118

132:                                              ; preds = %118
  %133 = load i64, i64* %16, align 8
  %134 = load i64, i64* %9, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %132
  %139 = load i64, i64* %16, align 8
  %140 = call i8* @emalloc(i64 %139)
  store i8* %140, i8** %15, align 8
  store i8* %140, i8** %14, align 8
  store i64 0, i64* %17, align 8
  br label %141

141:                                              ; preds = %164, %138
  %142 = load i64, i64* %17, align 8
  %143 = icmp ult i64 %142, 4
  br i1 %143, label %144, label %167

144:                                              ; preds = %141
  %145 = load i8*, i8** %15, align 8
  %146 = load i64, i64* %17, align 8
  %147 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load i64, i64* %17, align 8
  %152 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @memcpy(i8* %145, i8* %150, i64 %155)
  %157 = load i64, i64* %17, align 8
  %158 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i8*, i8** %15, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 %161
  store i8* %163, i8** %15, align 8
  br label %164

164:                                              ; preds = %144
  %165 = load i64, i64* %17, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %17, align 8
  br label %141

167:                                              ; preds = %141
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load i8*, i8** %14, align 8
  %172 = load i64, i64* %16, align 8
  %173 = call i32 @krb5_decrypt(i32 %168, i32 %169, i32 %170, i8* %171, i64 %172, %struct.TYPE_10__* %12)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %167
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %13, align 4
  %179 = call i32 (i32, i32, i32, i8*, ...) @krb5_err(i32 %177, i32 1, i32 %178, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %182

180:                                              ; preds = %167
  %181 = call i32 @krb5_data_free(%struct.TYPE_10__* %12)
  br label %182

182:                                              ; preds = %180, %176
  %183 = load i8*, i8** %14, align 8
  %184 = call i32 @free(i8* %183)
  %185 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 2
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 16
  %193 = add i64 %188, %192
  %194 = call i8* @emalloc(i64 %193)
  store i8* %194, i8** %15, align 8
  store i8* %194, i8** %14, align 8
  %195 = load i8*, i8** %15, align 8
  %196 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @memcpy(i8* %195, i8* %199, i64 %203)
  %205 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i8*, i8** %15, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 %208
  store i8* %210, i8** %15, align 8
  %211 = load i8*, i8** %15, align 8
  %212 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 2
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 2
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 16
  %220 = call i32 @memcpy(i8* %211, i8* %215, i64 %219)
  %221 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @free(i8* %224)
  %226 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 2
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @free(i8* %229)
  %231 = load i8*, i8** %14, align 8
  %232 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  store i8* %231, i8** %234, align 8
  %235 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 2
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 16
  %239 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = add i64 %242, %238
  store i64 %243, i64* %241, align 8
  %244 = load i32, i32* @KRB5_CRYPTO_TYPE_EMPTY, align 4
  %245 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 2
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 16
  %247 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 2
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  store i64 0, i64* %249, align 16
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* %8, align 4
  %253 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %254 = call i32 @krb5_decrypt_iov_ivec(i32 %250, i32 %251, i32 %252, %struct.TYPE_11__* %253, i32 4, i32* null)
  store i32 %254, i32* %13, align 4
  %255 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @free(i8* %258)
  %260 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 3
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @free(i8* %263)
  %265 = load i32, i32* %13, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %182
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* %13, align 4
  %271 = call i32 (i32, i32, i32, i8*, ...) @krb5_err(i32 %268, i32 1, i32 %269, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %270)
  br label %272

272:                                              ; preds = %267, %182
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %275, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %272
  %282 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %283

283:                                              ; preds = %281, %272
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  store i8* %286, i8** %14, align 8
  %287 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 1
  %290 = load i8*, i8** %289, align 8
  %291 = load i8*, i8** %14, align 8
  %292 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = call i64 @memcmp(i8* %290, i8* %291, i64 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %283
  %299 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %300

300:                                              ; preds = %298, %283
  %301 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 1
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 @free(i8* %304)
  ret i32 0
}

declare dso_local i32 @krb5_crypto_length(i32, i32, i32, i64*) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @krb5_encrypt_iov_ivec(i32, i32, i32, %struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @krb5_decrypt(i32, i32, i32, i8*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_10__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_decrypt_iov_ivec(i32, i32, i32, %struct.TYPE_11__*, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
