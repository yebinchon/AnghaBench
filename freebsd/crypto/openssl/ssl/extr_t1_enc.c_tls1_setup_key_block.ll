; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_enc.c_tls1_setup_key_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_enc.c_tls1_setup_key_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_18__*, %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i8*, i8*, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, i64, i8*, i32*, i32* }
%struct.TYPE_18__ = type { i64, i8*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@NID_undef = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS1_SETUP_KEY_BLOCK = common dso_local global i32 0, align 4
@SSL_R_CIPHER_OR_HASH_UNAVAILABLE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i64 0, align 8
@SSL_eNULL = common dso_local global i64 0, align 8
@SSL_RC4 = common dso_local global i64 0, align 8
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_setup_key_block(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %12 = load i32, i32* @NID_undef, align 4
  store i32 %12, i32* %8, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %162

21:                                               ; preds = %1
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ssl_cipher_get_evp(%struct.TYPE_18__* %24, i32** %5, i32** %6, i32* %8, i64* %10, i32** %7, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %34 = load i32, i32* @SSL_F_TLS1_SETUP_KEY_BLOCK, align 4
  %35 = load i32, i32* @SSL_R_CIPHER_OR_HASH_UNAVAILABLE, align 4
  %36 = call i32 @SSLfatal(%struct.TYPE_17__* %32, i32 %33, i32 %34, i32 %35)
  store i32 0, i32* %2, align 4
  br label %162

37:                                               ; preds = %21
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 5
  store i32* %38, i32** %43, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 4
  store i32* %44, i32** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  store i32 %50, i32* %55, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  store i64 %56, i64* %61, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i64 @EVP_CIPHER_key_length(i32* %62)
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %63, %64
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @EVP_CIPHER_iv_length(i32* %66)
  %68 = add i64 %65, %67
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = mul i64 %69, 2
  store i64 %70, i64* %9, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = call i32 @ssl3_cleanup_key_block(%struct.TYPE_17__* %71)
  %73 = load i64, i64* %9, align 8
  %74 = call i8* @OPENSSL_malloc(i64 %73)
  store i8* %74, i8** %4, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %37
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %79 = load i32, i32* @SSL_F_TLS1_SETUP_KEY_BLOCK, align 4
  %80 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %81 = call i32 @SSLfatal(%struct.TYPE_17__* %77, i32 %78, i32 %79, i32 %80)
  br label %160

82:                                               ; preds = %37
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  store i64 %83, i64* %88, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 3
  store i8* %89, i8** %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @tls1_generate_key_block(%struct.TYPE_17__* %95, i8* %96, i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %82
  br label %160

101:                                              ; preds = %82
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %159, label %108

108:                                              ; preds = %101
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TLS1_VERSION, align 8
  %115 = icmp sle i64 %113, %114
  br i1 %115, label %116, label %159

116:                                              ; preds = %108
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  store i32 1, i32* %120, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = icmp ne %struct.TYPE_15__* %125, null
  br i1 %126, label %127, label %158

127:                                              ; preds = %116
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SSL_eNULL, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %127
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 2
  store i32 0, i32* %141, align 8
  br label %142

142:                                              ; preds = %137, %127
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SSL_RC4, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %142
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %152, %142
  br label %158

158:                                              ; preds = %157, %116
  br label %159

159:                                              ; preds = %158, %108, %101
  store i32 1, i32* %11, align 4
  br label %160

160:                                              ; preds = %159, %100, %76
  %161 = load i32, i32* %11, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %160, %31, %20
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @ssl_cipher_get_evp(%struct.TYPE_18__*, i32**, i32**, i32*, i64*, i32**, i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i64 @EVP_CIPHER_key_length(i32*) #1

declare dso_local i64 @EVP_CIPHER_iv_length(i32*) #1

declare dso_local i32 @ssl3_cleanup_key_block(%struct.TYPE_17__*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @tls1_generate_key_block(%struct.TYPE_17__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
