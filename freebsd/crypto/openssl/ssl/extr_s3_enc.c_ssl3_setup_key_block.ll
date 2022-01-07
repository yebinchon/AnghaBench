; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_setup_key_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_setup_key_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i8*, i32*, i32*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_SETUP_KEY_BLOCK = common dso_local global i32 0, align 4
@SSL_R_CIPHER_OR_HASH_UNAVAILABLE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS = common dso_local global i32 0, align 4
@SSL_eNULL = common dso_local global i64 0, align 8
@SSL_RC4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_setup_key_block(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %143

18:                                               ; preds = %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = call i32 @ssl_cipher_get_evp(%struct.TYPE_14__* %21, i32** %5, i32** %6, i32* null, i32* null, i32** %9, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %27 = load i32, i32* @SSL_F_SSL3_SETUP_KEY_BLOCK, align 4
  %28 = load i32, i32* @SSL_R_CIPHER_OR_HASH_UNAVAILABLE, align 4
  %29 = call i32 @SSLfatal(%struct.TYPE_13__* %25, i32 %26, i32 %27, i32 %28)
  store i32 0, i32* %2, align 4
  br label %143

30:                                               ; preds = %18
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  store i32* %31, i32** %36, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  store i32* %37, i32** %42, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  store i32* %43, i32** %48, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @EVP_MD_size(i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %143

54:                                               ; preds = %30
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @EVP_CIPHER_key_length(i32* %55)
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @EVP_CIPHER_iv_length(i32* %59)
  %61 = add nsw i32 %58, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 %62, 2
  store i32 %63, i32* %7, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = call i32 @ssl3_cleanup_key_block(%struct.TYPE_13__* %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i8* @OPENSSL_malloc(i32 %66)
  store i8* %67, i8** %4, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %54
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %72 = load i32, i32* @SSL_F_SSL3_SETUP_KEY_BLOCK, align 4
  %73 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %74 = call i32 @SSLfatal(%struct.TYPE_13__* %70, i32 %71, i32 %72, i32 %73)
  store i32 0, i32* %2, align 4
  br label %143

75:                                               ; preds = %54
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i8* %82, i8** %87, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @ssl3_generate_key_block(%struct.TYPE_13__* %88, i8* %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %141, label %98

98:                                               ; preds = %75
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = icmp ne %struct.TYPE_11__* %107, null
  br i1 %108, label %109, label %140

109:                                              ; preds = %98
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SSL_eNULL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  br label %124

124:                                              ; preds = %119, %109
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SSL_RC4, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %124
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %134, %124
  br label %140

140:                                              ; preds = %139, %98
  br label %141

141:                                              ; preds = %140, %75
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %141, %69, %53, %24, %17
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @ssl_cipher_get_evp(%struct.TYPE_14__*, i32**, i32**, i32*, i32*, i32**, i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @EVP_CIPHER_key_length(i32*) #1

declare dso_local i32 @EVP_CIPHER_iv_length(i32*) #1

declare dso_local i32 @ssl3_cleanup_key_block(%struct.TYPE_13__*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @ssl3_generate_key_block(%struct.TYPE_13__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
