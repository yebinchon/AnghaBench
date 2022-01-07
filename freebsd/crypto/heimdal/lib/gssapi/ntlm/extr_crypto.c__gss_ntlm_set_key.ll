; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_crypto.c__gss_ntlm_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_crypto.c__gss_ntlm_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlmv2_key = type { i8*, i32, i32*, i64 }

@a2i_signmagic = common dso_local global i8* null, align 8
@a2i_sealmagic = common dso_local global i8* null, align 8
@i2a_signmagic = common dso_local global i8* null, align 8
@i2a_sealmagic = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_gss_ntlm_set_key(%struct.ntlmv2_key* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.ntlmv2_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [16 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.ntlmv2_key* %0, %struct.ntlmv2_key** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i8*, i8** @a2i_signmagic, align 8
  store i8* %18, i8** %13, align 8
  %19 = load i8*, i8** @a2i_sealmagic, align 8
  store i8* %19, i8** %14, align 8
  br label %23

20:                                               ; preds = %5
  %21 = load i8*, i8** @i2a_signmagic, align 8
  store i8* %21, i8** %13, align 8
  %22 = load i8*, i8** @i2a_sealmagic, align 8
  store i8* %22, i8** %14, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.ntlmv2_key*, %struct.ntlmv2_key** %6, align 8
  %25 = getelementptr inbounds %struct.ntlmv2_key, %struct.ntlmv2_key* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 (...) @EVP_md5()
  %29 = call i32 @EVP_DigestInit_ex(i32* %27, i32 %28, i32* null)
  %30 = load i32*, i32** %12, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %30, i8* %31, i64 %32)
  %34 = load i32*, i32** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = add nsw i32 %37, 1
  %39 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %34, i8* %35, i32 %38)
  %40 = load i32*, i32** %12, align 8
  %41 = load %struct.ntlmv2_key*, %struct.ntlmv2_key** %6, align 8
  %42 = getelementptr inbounds %struct.ntlmv2_key, %struct.ntlmv2_key* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @EVP_DigestFinal_ex(i32* %40, i8* %43, i32* null)
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 (...) @EVP_md5()
  %47 = call i32 @EVP_DigestInit_ex(i32* %45, i32 %46, i32* null)
  %48 = load i32*, i32** %12, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %48, i8* %49, i64 %50)
  %52 = load i32*, i32** %12, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = add nsw i32 %55, 1
  %57 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %52, i8* %53, i32 %56)
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %60 = call i32 @EVP_DigestFinal_ex(i32* %58, i8* %59, i32* null)
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @EVP_MD_CTX_destroy(i32* %61)
  %63 = load %struct.ntlmv2_key*, %struct.ntlmv2_key** %6, align 8
  %64 = getelementptr inbounds %struct.ntlmv2_key, %struct.ntlmv2_key* %63, i32 0, i32 1
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %66 = call i32 @RC4_set_key(i32* %64, i32 16, i8* %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %23
  %70 = load %struct.ntlmv2_key*, %struct.ntlmv2_key** %6, align 8
  %71 = getelementptr inbounds %struct.ntlmv2_key, %struct.ntlmv2_key* %70, i32 0, i32 1
  %72 = load %struct.ntlmv2_key*, %struct.ntlmv2_key** %6, align 8
  %73 = getelementptr inbounds %struct.ntlmv2_key, %struct.ntlmv2_key* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %69, %23
  ret void
}

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_md5(...) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

declare dso_local i32 @RC4_set_key(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
