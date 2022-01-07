; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-evp.c__krb5_evp_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-evp.c__krb5_evp_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_key_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct._krb5_evp_schedule* }
%struct._krb5_evp_schedule = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_krb5_evp_encrypt(i32 %0, %struct._krb5_key_data* %1, i8* %2, i64 %3, i64 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._krb5_key_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct._krb5_evp_schedule*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store %struct._krb5_key_data* %1, %struct._krb5_key_data** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %20 = load %struct._krb5_key_data*, %struct._krb5_key_data** %10, align 8
  %21 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %23, align 8
  store %struct._krb5_evp_schedule* %24, %struct._krb5_evp_schedule** %16, align 8
  %25 = load i64, i64* %13, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %16, align 8
  %29 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  br label %35

31:                                               ; preds = %7
  %32 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %16, align 8
  %33 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i32* [ %30, %27 ], [ %34, %31 ]
  store i32* %36, i32** %17, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load i32*, i32** %17, align 8
  %41 = call i64 @EVP_CIPHER_CTX_iv_length(i32* %40)
  store i64 %41, i64* %18, align 8
  %42 = load i64, i64* %18, align 8
  %43 = call i8* @malloc(i64 %42)
  store i8* %43, i8** %19, align 8
  %44 = load i8*, i8** %19, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @krb5_clear_error_message(i32 %47)
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* %8, align 4
  br label %69

50:                                               ; preds = %39
  %51 = load i8*, i8** %19, align 8
  %52 = load i64, i64* %18, align 8
  %53 = call i32 @memset(i8* %51, i32 0, i64 %52)
  %54 = load i32*, i32** %17, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = call i32 @EVP_CipherInit_ex(i32* %54, i32* null, i32* null, i32* null, i8* %55, i32 -1)
  %57 = load i8*, i8** %19, align 8
  %58 = call i32 @free(i8* %57)
  br label %63

59:                                               ; preds = %35
  %60 = load i32*, i32** %17, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = call i32 @EVP_CipherInit_ex(i32* %60, i32* null, i32* null, i32* null, i8* %61, i32 -1)
  br label %63

63:                                               ; preds = %59, %50
  %64 = load i32*, i32** %17, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @EVP_Cipher(i32* %64, i8* %65, i8* %66, i64 %67)
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %63, %46
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i64 @EVP_CIPHER_CTX_iv_length(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @EVP_Cipher(i32*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
