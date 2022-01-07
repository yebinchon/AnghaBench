; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_o_str.c_OPENSSL_hexstr2buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_o_str.c_OPENSSL_hexstr2buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPTO_F_OPENSSL_HEXSTR2BUF = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CRYPTO_R_ODD_NUMBER_OF_DIGITS = common dso_local global i32 0, align 4
@CRYPTO_R_ILLEGAL_HEX_DIGIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @OPENSSL_hexstr2buf(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* %13, align 8
  %17 = lshr i64 %16, 1
  %18 = call i8* @OPENSSL_malloc(i64 %17)
  store i8* %18, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @CRYPTO_F_OPENSSL_HEXSTR2BUF, align 4
  %22 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %23 = call i32 @CRYPTOerr(i32 %21, i32 %22)
  store i8* null, i8** %3, align 8
  br label %87

24:                                               ; preds = %2
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %67, %38, %24
  %28 = load i8*, i8** %12, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %27
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %12, align 8
  %34 = load i8, i8* %32, align 1
  store i8 %34, i8* %8, align 1
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 58
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %27

39:                                               ; preds = %31
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %12, align 8
  %42 = load i8, i8* %40, align 1
  store i8 %42, i8* %9, align 1
  %43 = load i8, i8* %9, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @CRYPTO_F_OPENSSL_HEXSTR2BUF, align 4
  %47 = load i32, i32* @CRYPTO_R_ODD_NUMBER_OF_DIGITS, align 4
  %48 = call i32 @CRYPTOerr(i32 %46, i32 %47)
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @OPENSSL_free(i8* %49)
  store i8* null, i8** %3, align 8
  br label %87

51:                                               ; preds = %39
  %52 = load i8, i8* %9, align 1
  %53 = call i32 @OPENSSL_hexchar2int(i8 zeroext %52)
  store i32 %53, i32* %11, align 4
  %54 = load i8, i8* %8, align 1
  %55 = call i32 @OPENSSL_hexchar2int(i8 zeroext %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58, %51
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @OPENSSL_free(i8* %62)
  %64 = load i32, i32* @CRYPTO_F_OPENSSL_HEXSTR2BUF, align 4
  %65 = load i32, i32* @CRYPTO_R_ILLEGAL_HEX_DIGIT, align 4
  %66 = call i32 @CRYPTOerr(i32 %64, i32 %65)
  store i8* null, i8** %3, align 8
  br label %87

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  %69 = shl i32 %68, 4
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %69, %70
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %7, align 8
  store i8 %72, i8* %73, align 1
  br label %27

75:                                               ; preds = %27
  %76 = load i64*, i64** %5, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = load i64*, i64** %5, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %78, %75
  %86 = load i8*, i8** %6, align 8
  store i8* %86, i8** %3, align 8
  br label %87

87:                                               ; preds = %85, %61, %45, %20
  %88 = load i8*, i8** %3, align 8
  ret i8* %88
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @OPENSSL_hexchar2int(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
