; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_derive_ntlm2_sess.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_derive_ntlm2_sess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_derive_ntlm2_sess(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = call i32* (...) @HMAC_CTX_new()
  store i32* %14, i32** %13, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %6, align 4
  br label %36

19:                                               ; preds = %5
  %20 = load i32*, i32** %13, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 (...) @EVP_md5()
  %23 = call i32 @HMAC_Init_ex(i32* %20, i8* %21, i32 16, i32 %22, i32* null)
  %24 = load i32*, i32** %13, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @HMAC_Update(i32* %24, i8* %25, i64 8)
  %27 = load i32*, i32** %13, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @HMAC_Update(i32* %27, i8* %28, i64 %29)
  %31 = load i32*, i32** %13, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @HMAC_Final(i32* %31, i8* %32, i32* %12)
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @HMAC_CTX_free(i32* %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %19, %17
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32* @HMAC_CTX_new(...) #1

declare dso_local i32 @HMAC_Init_ex(i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @EVP_md5(...) #1

declare dso_local i32 @HMAC_Update(i32*, i8*, i64) #1

declare dso_local i32 @HMAC_Final(i32*, i8*, i32*) #1

declare dso_local i32 @HMAC_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
