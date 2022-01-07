; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-arcfour.c_ARCFOUR_subdecrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-arcfour.c_ARCFOUR_subdecrypt.c"
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
@KRB5KRB_AP_ERR_BAD_INTEGRITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, i8*)* @ARCFOUR_subdecrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ARCFOUR_subdecrypt(i32 %0, %struct._krb5_key_data* %1, i8* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._krb5_key_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct._krb5_checksum_type*, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca %struct.TYPE_7__, align 8
  %19 = alloca %struct.TYPE_7__, align 8
  %20 = alloca %struct._krb5_key_data, align 8
  %21 = alloca %struct.TYPE_6__, align 8
  %22 = alloca [4 x i8], align 1
  %23 = alloca i8*, align 8
  %24 = alloca [16 x i8], align 16
  %25 = alloca [16 x i8], align 16
  %26 = alloca [16 x i8], align 16
  %27 = alloca [16 x i8], align 16
  %28 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store %struct._krb5_key_data* %1, %struct._krb5_key_data** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %29 = load i32, i32* @CKSUMTYPE_RSA_MD5, align 4
  %30 = call %struct._krb5_checksum_type* @_krb5_find_checksum(i32 %29)
  store %struct._krb5_checksum_type* %30, %struct._krb5_checksum_type** %15, align 8
  %31 = load i8*, i8** %10, align 8
  store i8* %31, i8** %23, align 8
  %32 = load i32, i32* %12, align 4
  %33 = lshr i32 %32, 0
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 0
  store i8 %35, i8* %36, align 1
  %37 = load i32, i32* %12, align 4
  %38 = lshr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 1
  store i8 %40, i8* %41, align 1
  %42 = load i32, i32* %12, align 4
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 2
  store i8 %45, i8* %46, align 1
  %47 = load i32, i32* %12, align 4
  %48 = lshr i32 %47, 24
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 3
  store i8 %50, i8* %51, align 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 16, i32* %53, align 8
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %15, align 8
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 0
  %59 = load %struct._krb5_key_data*, %struct._krb5_key_data** %9, align 8
  %60 = call i64 @_krb5_internal_hmac(i32* null, %struct._krb5_checksum_type* %57, i8* %58, i64 4, i32 0, %struct._krb5_key_data* %59, %struct.TYPE_7__* %16)
  store i64 %60, i64* %28, align 8
  %61 = load i64, i64* %28, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %6
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @krb5_abortx(i32 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %6
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 0
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %69 = call i32 @memcpy(i8* %67, i8* %68, i32 16)
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 16, i32* %71, align 8
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %20, i32 0, i32 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %78 = bitcast %struct.TYPE_5__* %76 to i8*
  %79 = bitcast %struct.TYPE_5__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 16, i32* %81, align 8
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %15, align 8
  %86 = load i8*, i8** %23, align 8
  %87 = call i64 @_krb5_internal_hmac(i32* null, %struct._krb5_checksum_type* %85, i8* %86, i64 16, i32 0, %struct._krb5_key_data* %20, %struct.TYPE_7__* %18)
  store i64 %87, i64* %28, align 8
  %88 = load i64, i64* %28, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %66
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @krb5_abortx(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %66
  %94 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %94, i32** %14, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @krb5_abortx(i32 %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 (...) @EVP_rc4()
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @EVP_CipherInit_ex(i32* %101, i32 %102, i32* null, i8* %105, i32* null, i32 0)
  %107 = load i32*, i32** %14, align 8
  %108 = load i8*, i8** %23, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 16
  %110 = load i8*, i8** %23, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 16
  %112 = load i64, i64* %11, align 8
  %113 = sub i64 %112, 16
  %114 = call i32 @EVP_Cipher(i32* %107, i8* %109, i8* %111, i64 %113)
  %115 = load i32*, i32** %14, align 8
  %116 = call i32 @EVP_CIPHER_CTX_free(i32* %115)
  %117 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %20, i32 0, i32 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %120 = bitcast %struct.TYPE_5__* %118 to i8*
  %121 = bitcast %struct.TYPE_5__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 16, i1 false)
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i32 16, i32* %123, align 8
  %124 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %15, align 8
  %128 = load i8*, i8** %23, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 16
  %130 = load i64, i64* %11, align 8
  %131 = sub i64 %130, 16
  %132 = call i64 @_krb5_internal_hmac(i32* null, %struct._krb5_checksum_type* %127, i8* %129, i64 %131, i32 0, %struct._krb5_key_data* %20, %struct.TYPE_7__* %19)
  store i64 %132, i64* %28, align 8
  %133 = load i64, i64* %28, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %100
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @krb5_abortx(i32 %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %100
  %139 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %140 = call i32 @memset(i8* %139, i32 0, i32 16)
  %141 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 0
  %142 = call i32 @memset(i8* %141, i32 0, i32 16)
  %143 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 0
  %144 = call i32 @memset(i8* %143, i32 0, i32 16)
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = call i64 @ct_memcmp(i8* %147, i8* %148, i32 16)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %138
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @krb5_clear_error_message(i32 %152)
  %154 = load i64, i64* @KRB5KRB_AP_ERR_BAD_INTEGRITY, align 8
  store i64 %154, i64* %7, align 8
  br label %156

155:                                              ; preds = %138
  store i64 0, i64* %7, align 8
  br label %156

156:                                              ; preds = %155, %151
  %157 = load i64, i64* %7, align 8
  ret i64 %157
}

declare dso_local %struct._krb5_checksum_type* @_krb5_find_checksum(i32) #1

declare dso_local i64 @_krb5_internal_hmac(i32*, %struct._krb5_checksum_type*, i8*, i64, i32, %struct._krb5_key_data*, %struct.TYPE_7__*) #1

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

declare dso_local i64 @ct_memcmp(i8*, i8*, i32) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
