; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_keyex_unwrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_keyex_unwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i64, i32* }

@MD4_DIGEST_LENGTH = common dso_local global i64 0, align 8
@HNTLM_ERR_INVALID_LENGTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HNTLM_ERR_CRYPTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_keyex_unwrap(%struct.ntlm_buf* %0, %struct.ntlm_buf* %1, %struct.ntlm_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntlm_buf*, align 8
  %6 = alloca %struct.ntlm_buf*, align 8
  %7 = alloca %struct.ntlm_buf*, align 8
  %8 = alloca i32*, align 8
  store %struct.ntlm_buf* %0, %struct.ntlm_buf** %5, align 8
  store %struct.ntlm_buf* %1, %struct.ntlm_buf** %6, align 8
  store %struct.ntlm_buf* %2, %struct.ntlm_buf** %7, align 8
  %9 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %10 = call i32 @memset(%struct.ntlm_buf* %9, i32 0, i32 16)
  %11 = load %struct.ntlm_buf*, %struct.ntlm_buf** %5, align 8
  %12 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MD4_DIGEST_LENGTH, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @HNTLM_ERR_INVALID_LENGTH, align 4
  store i32 %17, i32* %4, align 4
  br label %72

18:                                               ; preds = %3
  %19 = load i64, i64* @MD4_DIGEST_LENGTH, align 8
  %20 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %21 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %23 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32* @malloc(i64 %24)
  %26 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %27 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %29 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  %33 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %34 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %4, align 4
  br label %72

36:                                               ; preds = %18
  %37 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %42 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %4, align 4
  br label %72

44:                                               ; preds = %36
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 (...) @EVP_rc4()
  %47 = load %struct.ntlm_buf*, %struct.ntlm_buf** %5, align 8
  %48 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @EVP_CipherInit_ex(i32* %45, i32 %46, i32* null, i32* %49, i32* null, i32 0)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @EVP_CIPHER_CTX_free(i32* %53)
  %55 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %56 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %55)
  %57 = load i32, i32* @HNTLM_ERR_CRYPTO, align 4
  store i32 %57, i32* %4, align 4
  br label %72

58:                                               ; preds = %44
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %61 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %64 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %67 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @EVP_Cipher(i32* %59, i32* %62, i32* %65, i64 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @EVP_CIPHER_CTX_free(i32* %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %58, %52, %40, %32, %16
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @memset(%struct.ntlm_buf*, i32, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @heim_ntlm_free_buf(%struct.ntlm_buf*) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_rc4(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i32 @EVP_Cipher(i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
