; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_ntlmv2_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_ntlmv2_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_ntlmv2_key(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ntlm_buf, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = call i32* (...) @HMAC_CTX_new()
  store i32* %16, i32** %14, align 8
  %17 = load i32*, i32** %14, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %6, align 4
  br label %64

21:                                               ; preds = %5
  %22 = load i32*, i32** %14, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 (...) @EVP_md5()
  %26 = call i32 @HMAC_Init_ex(i32* %22, i8* %23, i64 %24, i32 %25, i32* null)
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @ascii2ucs2le(i8* %27, i32 1, %struct.ntlm_buf* %15)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %60

32:                                               ; preds = %21
  %33 = load i32*, i32** %14, align 8
  %34 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %15, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %15, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @HMAC_Update(i32* %33, i32 %35, i32 %37)
  %39 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %15, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @free(i32 %40)
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @ascii2ucs2le(i8* %42, i32 1, %struct.ntlm_buf* %15)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %60

47:                                               ; preds = %32
  %48 = load i32*, i32** %14, align 8
  %49 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %15, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %15, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @HMAC_Update(i32* %48, i32 %50, i32 %52)
  %54 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %15, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @free(i32 %55)
  %57 = load i32*, i32** %14, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @HMAC_Final(i32* %57, i8* %58, i32* %13)
  br label %60

60:                                               ; preds = %47, %46, %31
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @HMAC_CTX_free(i32* %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %19
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32* @HMAC_CTX_new(...) #1

declare dso_local i32 @HMAC_Init_ex(i32*, i8*, i64, i32, i32*) #1

declare dso_local i32 @EVP_md5(...) #1

declare dso_local i32 @ascii2ucs2le(i8*, i32, %struct.ntlm_buf*) #1

declare dso_local i32 @HMAC_Update(i32*, i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @HMAC_Final(i32*, i8*, i32*) #1

declare dso_local i32 @HMAC_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
