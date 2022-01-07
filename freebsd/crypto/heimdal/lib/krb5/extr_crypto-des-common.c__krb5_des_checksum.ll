; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-des-common.c__krb5_des_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-des-common.c__krb5_des_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_key_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct._krb5_evp_schedule* }
%struct._krb5_evp_schedule = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_krb5_des_checksum(i32 %0, i32* %1, %struct._krb5_key_data* %2, i8* %3, i64 %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct._krb5_key_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct._krb5_evp_schedule*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store %struct._krb5_key_data* %2, %struct._krb5_key_data** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %13, align 8
  %18 = load %struct._krb5_key_data*, %struct._krb5_key_data** %10, align 8
  %19 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %21, align 8
  store %struct._krb5_evp_schedule* %22, %struct._krb5_evp_schedule** %14, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %17, align 8
  %27 = load i8*, i8** %17, align 8
  %28 = call i32 @krb5_generate_random_block(i8* %27, i32 8)
  %29 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %6
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @krb5_set_error_message(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %7, align 4
  br label %67

38:                                               ; preds = %6
  %39 = load i32*, i32** %15, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @EVP_DigestInit_ex(i32* %39, i32* %40, i32* null)
  %42 = load i32*, i32** %15, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = call i32 @EVP_DigestUpdate(i32* %42, i8* %43, i64 8)
  %45 = load i32*, i32** %15, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @EVP_DigestUpdate(i32* %45, i8* %46, i64 %47)
  %49 = load i32*, i32** %15, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 8
  %52 = call i32 @EVP_DigestFinal_ex(i32* %49, i8* %51, i32* null)
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @EVP_MD_CTX_destroy(i32* %53)
  %55 = call i32 @memset(i32* %16, i32 0, i32 4)
  %56 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %14, align 8
  %57 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = bitcast i32* %16 to i8*
  %60 = call i32 @EVP_CipherInit_ex(i32 %58, i32* null, i32* null, i32* null, i8* %59, i32 -1)
  %61 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %14, align 8
  %62 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %17, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = call i32 @EVP_Cipher(i32 %63, i8* %64, i8* %65, i32 24)
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %38, %32
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @krb5_generate_random_block(i8*, i32) #1

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @EVP_CipherInit_ex(i32, i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_Cipher(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
