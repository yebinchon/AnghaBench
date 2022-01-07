; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_v1_base_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_v1_base_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i32*, i64 }

@MD4_DIGEST_LENGTH = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_v1_base_session(i8* %0, i64 %1, %struct.ntlm_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ntlm_buf*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ntlm_buf* %2, %struct.ntlm_buf** %7, align 8
  %9 = load i64, i64* @MD4_DIGEST_LENGTH, align 8
  %10 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %11 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %13 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32* @malloc(i64 %14)
  %16 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %17 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %19 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %24 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %3
  %27 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %32 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %4, align 4
  br label %49

34:                                               ; preds = %26
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 (...) @EVP_md4()
  %37 = call i32 @EVP_DigestInit_ex(i32* %35, i32 %36, i32* null)
  %38 = load i32*, i32** %8, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @EVP_DigestUpdate(i32* %38, i8* %39, i64 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %44 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @EVP_DigestFinal_ex(i32* %42, i32* %45, i32* null)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @EVP_MD_CTX_destroy(i32* %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %34, %30, %22
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @heim_ntlm_free_buf(%struct.ntlm_buf*) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_md4(...) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
