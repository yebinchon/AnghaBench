; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-arcfour.c_ARCFOUR_subencrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-arcfour.c_ARCFOUR_subencrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_key_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8* }
%struct._krb5_checksum_type = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }

@CKSUMTYPE_RSA_MD5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hmac failed\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, i8*)* @ARCFOUR_subencrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ARCFOUR_subencrypt(i32 %0, %struct._krb5_key_data* %1, i8* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct._krb5_key_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct._krb5_checksum_type*, align 8
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca %struct.TYPE_7__, align 8
  %19 = alloca %struct._krb5_key_data, align 8
  %20 = alloca %struct.TYPE_6__, align 8
  %21 = alloca [4 x i8], align 1
  %22 = alloca i8*, align 8
  %23 = alloca [16 x i8], align 16
  %24 = alloca [16 x i8], align 16
  %25 = alloca [16 x i8], align 16
  %26 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct._krb5_key_data* %1, %struct._krb5_key_data** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %27 = load i32, i32* @CKSUMTYPE_RSA_MD5, align 4
  %28 = call %struct._krb5_checksum_type* @_krb5_find_checksum(i32 %27)
  store %struct._krb5_checksum_type* %28, %struct._krb5_checksum_type** %14, align 8
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** %22, align 8
  %30 = load i32, i32* %11, align 4
  %31 = lshr i32 %30, 0
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* %11, align 4
  %36 = lshr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 1
  store i8 %38, i8* %39, align 1
  %40 = load i32, i32* %11, align 4
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 2
  store i8 %43, i8* %44, align 1
  %45 = load i32, i32* %11, align 4
  %46 = lshr i32 %45, 24
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 3
  store i8 %48, i8* %49, align 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 16, i32* %51, align 8
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %14, align 8
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  %57 = load %struct._krb5_key_data*, %struct._krb5_key_data** %8, align 8
  %58 = call i64 @_krb5_internal_hmac(i32* null, %struct._krb5_checksum_type* %55, i8* %56, i32 4, i32 0, %struct._krb5_key_data* %57, %struct.TYPE_7__* %15)
  store i64 %58, i64* %26, align 8
  %59 = load i64, i64* %26, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %6
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @krb5_abortx(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %6
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %67 = call i32 @memcpy(i8* %65, i8* %66, i32 16)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 16, i32* %69, align 8
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %19, i32 0, i32 0
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %76 = bitcast %struct.TYPE_5__* %74 to i8*
  %77 = bitcast %struct.TYPE_5__* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 16, i32* %79, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %14, align 8
  %84 = load i8*, i8** %22, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 16
  %86 = load i64, i64* %10, align 8
  %87 = sub i64 %86, 16
  %88 = trunc i64 %87 to i32
  %89 = call i64 @_krb5_internal_hmac(i32* null, %struct._krb5_checksum_type* %83, i8* %85, i32 %88, i32 0, %struct._krb5_key_data* %19, %struct.TYPE_7__* %18)
  store i64 %89, i64* %26, align 8
  %90 = load i64, i64* %26, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %64
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @krb5_abortx(i32 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %64
  %96 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %19, i32 0, i32 0
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %99 = bitcast %struct.TYPE_5__* %97 to i8*
  %100 = bitcast %struct.TYPE_5__* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 16, i1 false)
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 16, i32* %102, align 8
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %14, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = call i64 @_krb5_internal_hmac(i32* null, %struct._krb5_checksum_type* %106, i8* %107, i32 16, i32 0, %struct._krb5_key_data* %19, %struct.TYPE_7__* %17)
  store i64 %108, i64* %26, align 8
  %109 = load i64, i64* %26, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %95
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @krb5_abortx(i32 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %95
  %115 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %115, i32** %13, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @krb5_abortx(i32 %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 (...) @EVP_rc4()
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @EVP_CipherInit_ex(i32* %122, i32 %123, i32* null, i8* %126, i32* null, i32 1)
  %128 = load i32*, i32** %13, align 8
  %129 = load i8*, i8** %22, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 16
  %131 = load i8*, i8** %22, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 16
  %133 = load i64, i64* %10, align 8
  %134 = sub i64 %133, 16
  %135 = call i32 @EVP_Cipher(i32* %128, i8* %130, i8* %132, i64 %134)
  %136 = load i32*, i32** %13, align 8
  %137 = call i32 @EVP_CIPHER_CTX_free(i32* %136)
  %138 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %139 = call i32 @memset(i8* %138, i32 0, i32 16)
  %140 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %141 = call i32 @memset(i8* %140, i32 0, i32 16)
  %142 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 0
  %143 = call i32 @memset(i8* %142, i32 0, i32 16)
  ret i64 0
}

declare dso_local %struct._krb5_checksum_type* @_krb5_find_checksum(i32) #1

declare dso_local i64 @_krb5_internal_hmac(i32*, %struct._krb5_checksum_type*, i8*, i32, i32, %struct._krb5_key_data*, %struct.TYPE_7__*) #1

declare dso_local i32 @krb5_abortx(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32, i32*, i8*, i32*, i32) #1

declare dso_local i32 @EVP_rc4(...) #1

declare dso_local i32 @EVP_Cipher(i32*, i8*, i8*, i64) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
