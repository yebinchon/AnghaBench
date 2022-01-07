; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_rand.c_BN_generate_dsa_nonce.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_rand.c_BN_generate_dsa_nonce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA512_DIGEST_LENGTH = common dso_local global i32 0, align 4
@BN_F_BN_GENERATE_DSA_NONCE = common dso_local global i32 0, align 4
@BN_R_PRIVATE_KEY_TOO_LARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_generate_dsa_nonce(i32* %0, i32* %1, i32* %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [64 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [96 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %15, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @BN_num_bytes(i32* %27)
  %29 = add nsw i32 %28, 8
  store i32 %29, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %30 = load i32, i32* %19, align 4
  %31 = call i8* @OPENSSL_malloc(i32 %30)
  store i8* %31, i8** %21, align 8
  %32 = load i8*, i8** %21, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %6
  br label %99

35:                                               ; preds = %6
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds [96 x i8], [96 x i8]* %20, i64 0, i64 0
  %38 = call i64 @BN_bn2binpad(i32* %36, i8* %37, i32 96)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @BN_F_BN_GENERATE_DSA_NONCE, align 4
  %42 = load i32, i32* @BN_R_PRIVATE_KEY_TOO_LARGE, align 4
  %43 = call i32 @BNerr(i32 %41, i32 %42)
  br label %99

44:                                               ; preds = %35
  store i32 0, i32* %17, align 4
  br label %45

45:                                               ; preds = %73, %44
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %19, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %51 = call i32 @RAND_priv_bytes(i8* %50, i32 64)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %99

54:                                               ; preds = %49
  %55 = call i32 @SHA512_Init(i32* %13)
  %56 = call i32 (i32*, ...) @SHA512_Update(i32* %13, i32* %17, i64 4)
  %57 = getelementptr inbounds [96 x i8], [96 x i8]* %20, i64 0, i64 0
  %58 = call i32 (i32*, ...) @SHA512_Update(i32* %13, i8* %57, i64 96)
  %59 = load i8*, i8** %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 (i32*, ...) @SHA512_Update(i32* %13, i8* %59, i64 %60)
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %63 = call i32 (i32*, ...) @SHA512_Update(i32* %13, i8* %62, i64 64)
  %64 = call i32 @SHA512_Final(i8* %26, i32* %13)
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %17, align 4
  %67 = sub i32 %65, %66
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %70 = icmp ugt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %54
  %72 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  store i32 %72, i32* %18, align 4
  br label %73

73:                                               ; preds = %71, %54
  %74 = load i8*, i8** %21, align 8
  %75 = load i32, i32* %17, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @memcpy(i8* %77, i8* %26, i32 %78)
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %17, align 4
  %82 = add i32 %81, %80
  store i32 %82, i32* %17, align 4
  br label %45

83:                                               ; preds = %45
  %84 = load i8*, i8** %21, align 8
  %85 = load i32, i32* %19, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @BN_bin2bn(i8* %84, i32 %85, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %99

90:                                               ; preds = %83
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @BN_mod(i32* %91, i32* %92, i32* %93, i32* %94)
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %99

98:                                               ; preds = %90
  store i32 1, i32* %22, align 4
  br label %99

99:                                               ; preds = %98, %97, %89, %53, %40, %34
  %100 = load i8*, i8** %21, align 8
  %101 = call i32 @OPENSSL_free(i8* %100)
  %102 = getelementptr inbounds [96 x i8], [96 x i8]* %20, i64 0, i64 0
  %103 = call i32 @OPENSSL_cleanse(i8* %102, i32 96)
  %104 = load i32, i32* %22, align 4
  %105 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %105)
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BN_num_bytes(i32*) #2

declare dso_local i8* @OPENSSL_malloc(i32) #2

declare dso_local i64 @BN_bn2binpad(i32*, i8*, i32) #2

declare dso_local i32 @BNerr(i32, i32) #2

declare dso_local i32 @RAND_priv_bytes(i8*, i32) #2

declare dso_local i32 @SHA512_Init(i32*) #2

declare dso_local i32 @SHA512_Update(i32*, ...) #2

declare dso_local i32 @SHA512_Final(i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #2

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
