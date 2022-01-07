; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-arcfour.c__krb5_HMAC_MD5_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-arcfour.c__krb5_HMAC_MD5_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_key_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct._krb5_checksum_type = type { i32 }

@CKSUMTYPE_RSA_MD5 = common dso_local global i32 0, align 4
@__const._krb5_HMAC_MD5_checksum.signature = private unnamed_addr constant [13 x i8] c"signaturekey\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_krb5_HMAC_MD5_checksum(i32 %0, %struct._krb5_key_data* %1, i8* %2, i64 %3, i32 %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._krb5_key_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct._krb5_checksum_type*, align 8
  %16 = alloca [13 x i8], align 1
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca %struct._krb5_key_data, align 8
  %19 = alloca %struct.TYPE_6__, align 8
  %20 = alloca [4 x i8], align 1
  %21 = alloca [16 x i8], align 16
  %22 = alloca [16 x i8], align 16
  %23 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store %struct._krb5_key_data* %1, %struct._krb5_key_data** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %13, align 8
  %24 = load i32, i32* @CKSUMTYPE_RSA_MD5, align 4
  %25 = call %struct._krb5_checksum_type* @_krb5_find_checksum(i32 %24)
  store %struct._krb5_checksum_type* %25, %struct._krb5_checksum_type** %15, align 8
  %26 = bitcast [13 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const._krb5_HMAC_MD5_checksum.signature, i32 0, i32 0), i64 13, i1 false)
  %27 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %6
  %31 = load i32, i32* %8, align 4
  %32 = load i64, i64* @ENOMEM, align 8
  %33 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @krb5_set_error_message(i32 %31, i64 %32, i32 %33)
  %35 = load i64, i64* @ENOMEM, align 8
  store i64 %35, i64* %7, align 8
  br label %104

36:                                               ; preds = %6
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 16, i32* %38, align 8
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %15, align 8
  %44 = getelementptr inbounds [13 x i8], [13 x i8]* %16, i64 0, i64 0
  %45 = load %struct._krb5_key_data*, %struct._krb5_key_data** %9, align 8
  %46 = call i64 (i32, %struct._krb5_checksum_type*, ...) @_krb5_internal_hmac(i32 %42, %struct._krb5_checksum_type* %43, i8* %44, i64 13, i32 0, %struct._krb5_key_data* %45, %struct.TYPE_7__* %17)
  store i64 %46, i64* %23, align 8
  %47 = load i64, i64* %23, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @EVP_MD_CTX_destroy(i32* %50)
  %52 = load i64, i64* %23, align 8
  store i64 %52, i64* %7, align 8
  br label %104

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %18, i32 0, i32 0
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %57 = bitcast %struct.TYPE_5__* %55 to i8*
  %58 = bitcast %struct.TYPE_5__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 (...) @EVP_md5()
  %61 = call i32 @EVP_DigestInit_ex(i32* %59, i32 %60, i32* null)
  %62 = load i32, i32* %12, align 4
  %63 = lshr i32 %62, 0
  %64 = and i32 %63, 255
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  store i8 %65, i8* %66, align 1
  %67 = load i32, i32* %12, align 4
  %68 = lshr i32 %67, 8
  %69 = and i32 %68, 255
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 1
  store i8 %70, i8* %71, align 1
  %72 = load i32, i32* %12, align 4
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 2
  store i8 %75, i8* %76, align 1
  %77 = load i32, i32* %12, align 4
  %78 = lshr i32 %77, 24
  %79 = and i32 %78, 255
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 3
  store i8 %80, i8* %81, align 1
  %82 = load i32*, i32** %14, align 8
  %83 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  %84 = call i32 @EVP_DigestUpdate(i32* %82, i8* %83, i64 4)
  %85 = load i32*, i32** %14, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @EVP_DigestUpdate(i32* %85, i8* %86, i64 %87)
  %89 = load i32*, i32** %14, align 8
  %90 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %91 = call i32 @EVP_DigestFinal_ex(i32* %89, i8* %90, i32* null)
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @EVP_MD_CTX_destroy(i32* %92)
  %94 = load i32, i32* %8, align 4
  %95 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %15, align 8
  %96 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %98 = call i64 (i32, %struct._krb5_checksum_type*, ...) @_krb5_internal_hmac(i32 %94, %struct._krb5_checksum_type* %95, i8* %96, i64 16, i32 0, %struct._krb5_key_data* %18, %struct.TYPE_7__* %97)
  store i64 %98, i64* %23, align 8
  %99 = load i64, i64* %23, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %53
  %102 = load i64, i64* %23, align 8
  store i64 %102, i64* %7, align 8
  br label %104

103:                                              ; preds = %53
  store i64 0, i64* %7, align 8
  br label %104

104:                                              ; preds = %103, %101, %49, %30
  %105 = load i64, i64* %7, align 8
  ret i64 %105
}

declare dso_local %struct._krb5_checksum_type* @_krb5_find_checksum(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @_krb5_internal_hmac(i32, %struct._krb5_checksum_type*, ...) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_md5(...) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
