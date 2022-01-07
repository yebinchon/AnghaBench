; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-des-common.c__krb5_des_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-des-common.c__krb5_des_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_key_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct._krb5_evp_schedule* }
%struct._krb5_evp_schedule = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KRB5KRB_AP_ERR_BAD_INTEGRITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_krb5_des_verify(i32 %0, i32* %1, %struct._krb5_key_data* %2, i8* %3, i64 %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct._krb5_key_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct._krb5_evp_schedule*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [24 x i8], align 16
  %17 = alloca [16 x i8], align 16
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store %struct._krb5_key_data* %2, %struct._krb5_key_data** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %13, align 8
  %20 = load %struct._krb5_key_data*, %struct._krb5_key_data** %10, align 8
  %21 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %23, align 8
  store %struct._krb5_evp_schedule* %24, %struct._krb5_evp_schedule** %14, align 8
  store i32 0, i32* %19, align 4
  %25 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %25, i32** %15, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %6
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @krb5_set_error_message(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %7, align 4
  br label %79

34:                                               ; preds = %6
  %35 = call i32 @memset(i8* %18, i32 0, i32 1)
  %36 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %14, align 8
  %37 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @EVP_CipherInit_ex(i32 %38, i32* null, i32* null, i32* null, i8* %18, i32 -1)
  %40 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %14, align 8
  %41 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [24 x i8], [24 x i8]* %16, i64 0, i64 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @EVP_Cipher(i32 %42, i8* %43, i32 %47, i32 24)
  %49 = load i32*, i32** %15, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @EVP_DigestInit_ex(i32* %49, i32* %50, i32* null)
  %52 = load i32*, i32** %15, align 8
  %53 = getelementptr inbounds [24 x i8], [24 x i8]* %16, i64 0, i64 0
  %54 = call i32 @EVP_DigestUpdate(i32* %52, i8* %53, i64 8)
  %55 = load i32*, i32** %15, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @EVP_DigestUpdate(i32* %55, i8* %56, i64 %57)
  %59 = load i32*, i32** %15, align 8
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %61 = call i32 @EVP_DigestFinal_ex(i32* %59, i8* %60, i32* null)
  %62 = load i32*, i32** %15, align 8
  %63 = call i32 @EVP_MD_CTX_destroy(i32* %62)
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %65 = getelementptr inbounds [24 x i8], [24 x i8]* %16, i64 0, i64 0
  %66 = getelementptr inbounds i8, i8* %65, i64 8
  %67 = call i64 @ct_memcmp(i8* %64, i8* %66, i32 16)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %34
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @krb5_clear_error_message(i32 %70)
  %72 = load i32, i32* @KRB5KRB_AP_ERR_BAD_INTEGRITY, align 4
  store i32 %72, i32* %19, align 4
  br label %73

73:                                               ; preds = %69, %34
  %74 = getelementptr inbounds [24 x i8], [24 x i8]* %16, i64 0, i64 0
  %75 = call i32 @memset(i8* %74, i32 0, i32 24)
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %77 = call i32 @memset(i8* %76, i32 0, i32 16)
  %78 = load i32, i32* %19, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %73, %28
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @EVP_CipherInit_ex(i32, i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_Cipher(i32, i8*, i32, i32) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

declare dso_local i64 @ct_memcmp(i8*, i8*, i32) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
