; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_vfy.c_t_tob64.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_vfy.c_t_tob64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_ENCODE_CTX_NO_NEWLINES = common dso_local global i32 0, align 4
@EVP_ENCODE_CTX_USE_SRP_ALPHABET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @t_tob64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_tob64(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8], align 1
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = call i32* (...) @EVP_ENCODE_CTX_new()
  store i32* %13, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = bitcast [2 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 2, i1 false)
  store i64 0, i64* %12, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %91

18:                                               ; preds = %3
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @EVP_EncodeInit(i32* %19)
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @EVP_ENCODE_CTX_NO_NEWLINES, align 4
  %23 = load i32, i32* @EVP_ENCODE_CTX_USE_SRP_ALPHABET, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @evp_encode_ctx_set_flags(i32* %21, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = srem i32 %26, 3
  %28 = sub nsw i32 3, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 3
  br i1 %31, label %32, label %43

32:                                               ; preds = %18
  %33 = load i32*, i32** %8, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %36 = load i64, i64* %12, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @EVP_EncodeUpdate(i32* %33, i8* %34, i32* %9, i8* %35, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @EVP_ENCODE_CTX_free(i32* %41)
  store i32 0, i32* %4, align 4
  br label %91

43:                                               ; preds = %32, %18
  %44 = load i32*, i32** %8, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @EVP_EncodeUpdate(i32* %44, i8* %48, i32* %10, i8* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @EVP_ENCODE_CTX_free(i32* %54)
  store i32 0, i32* %4, align 4
  br label %91

56:                                               ; preds = %43
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = call i32 @EVP_EncodeFinal(i32* %60, i8* %64, i32* %10)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 3
  br i1 %70, label %71, label %88

71:                                               ; preds = %56
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %12, align 8
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memmove(i8* %72, i8* %75, i32 %80)
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %12, align 8
  %86 = sub i64 %84, %85
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %71, %56
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @EVP_ENCODE_CTX_free(i32* %89)
  store i32 1, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %53, %40, %17
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32* @EVP_ENCODE_CTX_new(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @EVP_EncodeInit(i32*) #1

declare dso_local i32 @evp_encode_ctx_set_flags(i32*, i32) #1

declare dso_local i32 @EVP_EncodeUpdate(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_ENCODE_CTX_free(i32*) #1

declare dso_local i32 @EVP_EncodeFinal(i32*, i8*, i32*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
