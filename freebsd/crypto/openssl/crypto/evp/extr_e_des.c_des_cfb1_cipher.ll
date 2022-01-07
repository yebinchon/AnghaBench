; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_des.c_des_cfb1_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_des.c_des_cfb1_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAXCHUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @des_cfb1_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_cfb1_cipher(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1 x i8], align 1
  %12 = alloca [1 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @EVP_MAXCHUNK, align 4
  %14 = sdiv i32 %13, 8
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %10, align 8
  br label %21

21:                                               ; preds = %19, %4
  br label %22

22:                                               ; preds = %109, %21
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp uge i64 %26, %27
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %110

31:                                               ; preds = %29
  store i64 0, i64* %9, align 8
  br label %32

32:                                               ; preds = %91, %31
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = mul i64 %34, 8
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %94

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = udiv i64 %39, 8
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i64, i64* %9, align 8
  %45 = urem i64 %44, 8
  %46 = sub i64 7, %45
  %47 = trunc i64 %46 to i32
  %48 = shl i32 1, %47
  %49 = and i32 %43, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 128, i32 0
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds [1 x i8], [1 x i8]* %11, i64 0, i64 0
  store i8 %53, i8* %54, align 1
  %55 = getelementptr inbounds [1 x i8], [1 x i8]* %11, i64 0, i64 0
  %56 = getelementptr inbounds [1 x i8], [1 x i8]* %12, i64 0, i64 0
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @EVP_CIPHER_CTX_get_cipher_data(i32* %57)
  %59 = load i32*, i32** %5, align 8
  %60 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %59)
  %61 = inttoptr i64 %60 to i32*
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %62)
  %64 = call i32 @DES_cfb_encrypt(i8* %55, i8* %56, i32 1, i32 1, i32 %58, i32* %61, i32 %63)
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %9, align 8
  %67 = udiv i64 %66, 8
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i64, i64* %9, align 8
  %72 = urem i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = ashr i32 128, %73
  %75 = xor i32 %74, -1
  %76 = and i32 %70, %75
  %77 = getelementptr inbounds [1 x i8], [1 x i8]* %12, i64 0, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 128
  %81 = load i64, i64* %9, align 8
  %82 = urem i64 %81, 8
  %83 = trunc i64 %82 to i32
  %84 = ashr i32 %80, %83
  %85 = or i32 %76, %84
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %6, align 8
  %88 = load i64, i64* %9, align 8
  %89 = udiv i64 %88, 8
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 %86, i8* %90, align 1
  br label %91

91:                                               ; preds = %37
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %9, align 8
  br label %32

94:                                               ; preds = %32
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %8, align 8
  %97 = sub i64 %96, %95
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 %98
  store i8* %100, i8** %7, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %103, i8** %6, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %10, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  %108 = load i64, i64* %8, align 8
  store i64 %108, i64* %10, align 8
  br label %109

109:                                              ; preds = %107, %94
  br label %22

110:                                              ; preds = %29
  ret i32 1
}

declare dso_local i32 @DES_cfb_encrypt(i8*, i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_get_cipher_data(i32*) #1

declare dso_local i64 @EVP_CIPHER_CTX_iv_noconst(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_encrypting(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
