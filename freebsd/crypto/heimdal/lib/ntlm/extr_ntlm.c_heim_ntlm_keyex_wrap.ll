; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_keyex_wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_keyex_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i8*, i32* }

@MD4_DIGEST_LENGTH = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@HNTLM_ERR_CRYPTO = common dso_local global i32 0, align 4
@HNTLM_ERR_RAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_keyex_wrap(%struct.ntlm_buf* %0, %struct.ntlm_buf* %1, %struct.ntlm_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntlm_buf*, align 8
  %6 = alloca %struct.ntlm_buf*, align 8
  %7 = alloca %struct.ntlm_buf*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ntlm_buf* %0, %struct.ntlm_buf** %5, align 8
  store %struct.ntlm_buf* %1, %struct.ntlm_buf** %6, align 8
  store %struct.ntlm_buf* %2, %struct.ntlm_buf** %7, align 8
  %10 = load i8*, i8** @MD4_DIGEST_LENGTH, align 8
  %11 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %12 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %14 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @malloc(i8* %15)
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %19 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %21 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %26 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %25, i32 0, i32 0
  store i8* null, i8** %26, align 8
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %4, align 4
  br label %107

28:                                               ; preds = %3
  %29 = load i8*, i8** @MD4_DIGEST_LENGTH, align 8
  %30 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %31 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %33 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @malloc(i8* %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %38 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %40 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %28
  %44 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %45 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %44)
  %46 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %47 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %46, i32 0, i32 0
  store i8* null, i8** %47, align 8
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %4, align 4
  br label %107

49:                                               ; preds = %28
  %50 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %55 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %54)
  %56 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %57 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  store i32 %58, i32* %4, align 4
  br label %107

59:                                               ; preds = %49
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 (...) @EVP_rc4()
  %62 = load %struct.ntlm_buf*, %struct.ntlm_buf** %5, align 8
  %63 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @EVP_CipherInit_ex(i32* %60, i32 %61, i32* null, i32* %64, i32* null, i32 1)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @EVP_CIPHER_CTX_free(i32* %69)
  %71 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %72 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %71)
  %73 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %74 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %73)
  %75 = load i32, i32* @HNTLM_ERR_CRYPTO, align 4
  store i32 %75, i32* %4, align 4
  br label %107

76:                                               ; preds = %59
  %77 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %78 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %81 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @RAND_bytes(i32* %79, i8* %82)
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @EVP_CIPHER_CTX_free(i32* %86)
  %88 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %89 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %88)
  %90 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %91 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %90)
  %92 = load i32, i32* @HNTLM_ERR_RAND, align 4
  store i32 %92, i32* %4, align 4
  br label %107

93:                                               ; preds = %76
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %96 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %99 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %102 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @EVP_Cipher(i32* %94, i32* %97, i32* %100, i8* %103)
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @EVP_CIPHER_CTX_free(i32* %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %93, %85, %68, %53, %43, %24
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i8* @malloc(i8*) #1

declare dso_local i32 @heim_ntlm_free_buf(%struct.ntlm_buf*) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_rc4(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i32 @RAND_bytes(i32*, i8*) #1

declare dso_local i32 @EVP_Cipher(i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
