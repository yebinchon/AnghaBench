; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_b64.c_ct_base64_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_b64.c_ct_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CT_F_CT_BASE64_DECODE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CT_R_BASE64_DECODE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @ct_base64_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_base64_decode(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %6, align 8
  store i8* null, i8** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = udiv i64 %17, 4
  %19 = mul i64 %18, 3
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @OPENSSL_malloc(i32 %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @CT_F_CT_BASE64_DECODE, align 4
  %27 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %28 = call i32 @CTerr(i32 %26, i32 %27)
  br label %61

29:                                               ; preds = %16
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @EVP_DecodeBlock(i8* %30, i8* %31, i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @CT_F_CT_BASE64_DECODE, align 4
  %38 = load i32, i32* @CT_R_BASE64_DECODE_ERROR, align 4
  %39 = call i32 @CTerr(i32 %37, i32 %38)
  br label %61

40:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %6, align 8
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 61
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = icmp sgt i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %61

56:                                               ; preds = %49
  br label %41

57:                                               ; preds = %41
  %58 = load i8*, i8** %9, align 8
  %59 = load i8**, i8*** %5, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %64

61:                                               ; preds = %55, %36, %25
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @OPENSSL_free(i8* %62)
  store i32 -1, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %57, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @CTerr(i32, i32) #1

declare dso_local i32 @EVP_DecodeBlock(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
