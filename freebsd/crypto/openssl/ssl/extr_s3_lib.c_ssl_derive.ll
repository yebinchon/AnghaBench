; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl_derive.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl_derive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i64 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL_DERIVE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_derive(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16, %4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %22 = load i32, i32* @SSL_F_SSL_DERIVE, align 4
  %23 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %24 = call i32 @SSLfatal(%struct.TYPE_13__* %20, i32 %21, i32 %22, i32 %23)
  store i32 0, i32* %5, align 4
  br label %128

25:                                               ; preds = %16
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @EVP_PKEY_CTX_new(i32* %26, i32* null)
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i64 @EVP_PKEY_derive_init(i32* %28)
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @EVP_PKEY_derive_set_peer(i32* %32, i32* %33)
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %13, align 8
  %38 = call i64 @EVP_PKEY_derive(i32* %37, i8* null, i64* %12)
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36, %31, %25
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %43 = load i32, i32* @SSL_F_SSL_DERIVE, align 4
  %44 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %45 = call i32 @SSLfatal(%struct.TYPE_13__* %41, i32 %42, i32 %43, i32 %44)
  br label %121

46:                                               ; preds = %36
  %47 = load i64, i64* %12, align 8
  %48 = call i8* @OPENSSL_malloc(i64 %47)
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %54 = load i32, i32* @SSL_F_SSL_DERIVE, align 4
  %55 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %56 = call i32 @SSLfatal(%struct.TYPE_13__* %52, i32 %53, i32 %54, i32 %55)
  br label %121

57:                                               ; preds = %46
  %58 = load i32*, i32** %13, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 @EVP_PKEY_derive(i32* %58, i8* %59, i64* %12)
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %65 = load i32, i32* @SSL_F_SSL_DERIVE, align 4
  %66 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %67 = call i32 @SSLfatal(%struct.TYPE_13__* %63, i32 %64, i32 %65, i32 %66)
  br label %121

68:                                               ; preds = %57
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %68
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = call i64 @SSL_IS_TLS13(%struct.TYPE_13__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = call i32 @ssl_handshake_md(%struct.TYPE_13__* %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = bitcast i32* %85 to i8*
  %87 = call i32 @tls13_generate_secret(%struct.TYPE_13__* %81, i32 %83, i32* null, i32* null, i32 0, i8* %86)
  store i32 %87, i32* %10, align 4
  br label %89

88:                                               ; preds = %75
  store i32 1, i32* %10, align 4
  br label %89

89:                                               ; preds = %88, %80
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call i64 @tls13_generate_handshake_secret(%struct.TYPE_13__* %93, i8* %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %92, %89
  %99 = phi i1 [ false, %89 ], [ %97, %92 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %10, align 4
  br label %106

101:                                              ; preds = %71
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @ssl_generate_master_secret(%struct.TYPE_13__* %102, i8* %103, i64 %104, i32 0)
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %101, %98
  br label %120

107:                                              ; preds = %68
  %108 = load i8*, i8** %11, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i8* %108, i8** %113, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  store i64 %114, i64* %119, align 8
  store i8* null, i8** %11, align 8
  store i32 1, i32* %10, align 4
  br label %120

120:                                              ; preds = %107, %106
  br label %121

121:                                              ; preds = %120, %62, %51, %40
  %122 = load i8*, i8** %11, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @OPENSSL_clear_free(i8* %122, i64 %123)
  %125 = load i32*, i32** %13, align 8
  %126 = call i32 @EVP_PKEY_CTX_free(i32* %125)
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %121, %19
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_derive_init(i32*) #1

declare dso_local i64 @EVP_PKEY_derive_set_peer(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_derive(i32*, i8*, i64*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_13__*) #1

declare dso_local i32 @tls13_generate_secret(%struct.TYPE_13__*, i32, i32*, i32*, i32, i8*) #1

declare dso_local i32 @ssl_handshake_md(%struct.TYPE_13__*) #1

declare dso_local i64 @tls13_generate_handshake_secret(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32 @ssl_generate_master_secret(%struct.TYPE_13__*, i8*, i64, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
