; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_lib.c_SRP_Calc_x.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_lib.c_SRP_Calc_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SRP_Calc_x(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i8* null, i8** %11, align 8
  store i32* null, i32** %12, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20, %3
  store i32* null, i32** %4, align 8
  store i32 1, i32* %13, align 4
  br label %103

27:                                               ; preds = %23
  %28 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32* null, i32** %4, align 8
  store i32 1, i32* %13, align 4
  br label %103

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @BN_num_bytes(i32* %33)
  %35 = call i8* @OPENSSL_malloc(i32 %34)
  store i8* %35, i8** %11, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %97

38:                                               ; preds = %32
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 (...) @EVP_sha1()
  %41 = call i32 @EVP_DigestInit_ex(i32* %39, i32 %40, i32* null)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %38
  %44 = load i32*, i32** %10, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %44, i8* %45, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %43
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i32*, i32** %10, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %55, i8* %56, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @EVP_DigestFinal_ex(i32* %62, i8* %17, i32* null)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 (...) @EVP_sha1()
  %68 = call i32 @EVP_DigestInit_ex(i32* %66, i32 %67, i32* null)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65, %61, %54, %50, %43, %38
  br label %97

71:                                               ; preds = %65
  %72 = load i32*, i32** %5, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i64 @BN_bn2bin(i32* %72, i8* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %97

77:                                               ; preds = %71
  %78 = load i32*, i32** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @BN_num_bytes(i32* %80)
  %82 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %78, i8* %79, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %97

85:                                               ; preds = %77
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %86, i8* %17, i64 %15)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @EVP_DigestFinal_ex(i32* %90, i8* %17, i32* null)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89, %85
  br label %97

94:                                               ; preds = %89
  %95 = trunc i64 %15 to i32
  %96 = call i32* @BN_bin2bn(i8* %17, i32 %95, i32* null)
  store i32* %96, i32** %12, align 8
  br label %97

97:                                               ; preds = %94, %93, %84, %76, %70, %37
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @OPENSSL_free(i8* %98)
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @EVP_MD_CTX_free(i32* %100)
  %102 = load i32*, i32** %12, align 8
  store i32* %102, i32** %4, align 8
  store i32 1, i32* %13, align 4
  br label %103

103:                                              ; preds = %97, %31, %26
  %104 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32*, i32** %4, align 8
  ret i32* %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i8* @OPENSSL_malloc(i32) #2

declare dso_local i32 @BN_num_bytes(i32*) #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #2

declare dso_local i32 @EVP_sha1(...) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i64 @BN_bn2bin(i32*, i8*) #2

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
