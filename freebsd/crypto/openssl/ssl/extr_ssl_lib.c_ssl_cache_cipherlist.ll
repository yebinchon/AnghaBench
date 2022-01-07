; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_ssl_cache_cipherlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_ssl_cache_cipherlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i64 }

@SSLV2_CIPHER_LEN = common dso_local global i64 0, align 8
@TLS_CIPHER_LEN = common dso_local global i64 0, align 8
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_F_SSL_CACHE_CIPHERLIST = common dso_local global i32 0, align 4
@SSL_R_NO_CIPHERS_SPECIFIED = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_ERROR_IN_RECEIVED_CIPHER_LIST = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_R_BAD_PACKET = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_cache_cipherlist(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @SSLV2_CIPHER_LEN, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @TLS_CIPHER_LEN, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @PACKET_remaining(i32* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %28 = load i32, i32* @SSL_F_SSL_CACHE_CIPHERLIST, align 4
  %29 = load i32, i32* @SSL_R_NO_CIPHERS_SPECIFIED, align 4
  %30 = call i32 @SSLfatal(%struct.TYPE_8__* %26, i32 %27, i32 %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %180

31:                                               ; preds = %19
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @PACKET_remaining(i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = srem i64 %33, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %41 = load i32, i32* @SSL_F_SSL_CACHE_CIPHERLIST, align 4
  %42 = load i32, i32* @SSL_R_ERROR_IN_RECEIVED_CIPHER_LIST, align 4
  %43 = call i32 @SSLfatal(%struct.TYPE_8__* %39, i32 %40, i32 %41, i32 %42)
  store i32 0, i32* %4, align 4
  br label %180

44:                                               ; preds = %31
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @OPENSSL_free(i8* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i8* null, i8** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %158

64:                                               ; preds = %44
  %65 = load i32*, i32** %6, align 8
  %66 = call i64 @PACKET_remaining(i32* %65)
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = sdiv i64 %66, %68
  store i64 %69, i64* %9, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @TLS_CIPHER_LEN, align 8
  %74 = mul i64 %72, %73
  %75 = call i8* @OPENSSL_malloc(i64 %74)
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i8* %76, i8** %81, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %64
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %87 = load i32, i32* @SSL_F_SSL_CACHE_CIPHERLIST, align 4
  %88 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %89 = call i32 @SSLfatal(%struct.TYPE_8__* %85, i32 %86, i32 %87, i32 %88)
  store i32 0, i32* %4, align 4
  br label %180

90:                                               ; preds = %64
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %153, %90
  %97 = call i64 @PACKET_remaining(i32* %10)
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %157

99:                                               ; preds = %96
  %100 = call i32 @PACKET_get_1(i32* %10, i32* %11)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i8*, i8** %12, align 8
  %107 = load i64, i64* @TLS_CIPHER_LEN, align 8
  %108 = call i32 @PACKET_copy_bytes(i32* %10, i8* %106, i64 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105, %102
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %110
  %114 = load i64, i64* @TLS_CIPHER_LEN, align 8
  %115 = call i32 @PACKET_forward(i32* %10, i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %140, label %117

117:                                              ; preds = %113, %105, %99
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %120 = load i32, i32* @SSL_F_SSL_CACHE_CIPHERLIST, align 4
  %121 = load i32, i32* @SSL_R_BAD_PACKET, align 4
  %122 = call i32 @SSLfatal(%struct.TYPE_8__* %118, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @OPENSSL_free(i8* %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i8* null, i8** %134, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  store i64 0, i64* %139, align 8
  store i32 0, i32* %4, align 4
  br label %180

140:                                              ; preds = %113, %110
  %141 = load i32, i32* %11, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load i64, i64* @TLS_CIPHER_LEN, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, %144
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %143, %140
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* @TLS_CIPHER_LEN, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 %154
  store i8* %156, i8** %12, align 8
  br label %96

157:                                              ; preds = %96
  br label %179

158:                                              ; preds = %44
  %159 = load i32*, i32** %6, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = call i32 @PACKET_memdup(i32* %159, i8** %164, i64* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %158
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %174 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %175 = load i32, i32* @SSL_F_SSL_CACHE_CIPHERLIST, align 4
  %176 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %177 = call i32 @SSLfatal(%struct.TYPE_8__* %173, i32 %174, i32 %175, i32 %176)
  store i32 0, i32* %4, align 4
  br label %180

178:                                              ; preds = %158
  br label %179

179:                                              ; preds = %178, %157
  store i32 1, i32* %4, align 4
  br label %180

180:                                              ; preds = %179, %172, %117, %84, %38, %25
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @PACKET_copy_bytes(i32*, i8*, i64) #1

declare dso_local i32 @PACKET_forward(i32*, i64) #1

declare dso_local i32 @PACKET_memdup(i32*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
