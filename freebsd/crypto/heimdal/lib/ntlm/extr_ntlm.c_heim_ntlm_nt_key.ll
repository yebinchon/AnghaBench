; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_nt_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_nt_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i32*, i32 }

@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_nt_key(i8* %0, %struct.ntlm_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ntlm_buf*, align 8
  %6 = alloca %struct.ntlm_buf, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ntlm_buf* %1, %struct.ntlm_buf** %5, align 8
  %9 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %10 = call i32* @malloc(i32 %9)
  %11 = load %struct.ntlm_buf*, %struct.ntlm_buf** %5, align 8
  %12 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.ntlm_buf*, %struct.ntlm_buf** %5, align 8
  %14 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %21 = load %struct.ntlm_buf*, %struct.ntlm_buf** %5, align 8
  %22 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @ascii2ucs2le(i8* %23, i32 0, %struct.ntlm_buf* %6)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.ntlm_buf*, %struct.ntlm_buf** %5, align 8
  %29 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %19
  %32 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.ntlm_buf*, %struct.ntlm_buf** %5, align 8
  %37 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %36)
  %38 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %6)
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %3, align 4
  br label %58

40:                                               ; preds = %31
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 (...) @EVP_md4()
  %43 = call i32 @EVP_DigestInit_ex(i32* %41, i32 %42, i32* null)
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %6, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @EVP_DigestUpdate(i32* %44, i32* %46, i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.ntlm_buf*, %struct.ntlm_buf** %5, align 8
  %52 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @EVP_DigestFinal_ex(i32* %50, i32* %53, i32* null)
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @EVP_MD_CTX_destroy(i32* %55)
  %57 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %6)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %40, %35, %27, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @ascii2ucs2le(i8*, i32, %struct.ntlm_buf*) #1

declare dso_local i32 @heim_ntlm_free_buf(%struct.ntlm_buf*) #1

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_md4(...) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i32*, i32) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
