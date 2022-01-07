; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_pk1.c_RSA_padding_check_PKCS1_type_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_pk1.c_RSA_padding_check_PKCS1_type_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1 = common dso_local global i32 0, align 4
@RSA_R_INVALID_PADDING = common dso_local global i32 0, align 4
@RSA_R_BLOCK_TYPE_IS_NOT_01 = common dso_local global i32 0, align 4
@RSA_R_BAD_FIXED_HEADER_DECRYPT = common dso_local global i32 0, align 4
@RSA_R_NULL_BEFORE_BLOCK_MISSING = common dso_local global i32 0, align 4
@RSA_R_BAD_PAD_BYTE_COUNT = common dso_local global i32 0, align 4
@RSA_R_DATA_TOO_LARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_padding_check_PKCS1_type_1(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %9, align 8
  store i8* %15, i8** %14, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 11
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %115

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i8*, i8** %14, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %14, align 8
  %26 = load i8, i8* %24, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1, align 4
  %31 = load i32, i32* @RSA_R_INVALID_PADDING, align 4
  %32 = call i32 @RSAerr(i32 %30, i32 %31)
  store i32 -1, i32* %6, align 4
  br label %115

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %33, %19
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %14, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %14, align 8
  %44 = load i8, i8* %42, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %41, %36
  %48 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1, align 4
  %49 = load i32, i32* @RSA_R_BLOCK_TYPE_IS_NOT_01, align 4
  %50 = call i32 @RSAerr(i32 %48, i32 %49)
  store i32 -1, i32* %6, align 4
  br label %115

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %78, %51
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load i8*, i8** %14, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 255
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load i8*, i8** %14, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %14, align 8
  br label %81

71:                                               ; preds = %63
  %72 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1, align 4
  %73 = load i32, i32* @RSA_R_BAD_FIXED_HEADER_DECRYPT, align 4
  %74 = call i32 @RSAerr(i32 %72, i32 %73)
  store i32 -1, i32* %6, align 4
  br label %115

75:                                               ; preds = %58
  %76 = load i8*, i8** %14, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %14, align 8
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %54

81:                                               ; preds = %68, %54
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1, align 4
  %87 = load i32, i32* @RSA_R_NULL_BEFORE_BLOCK_MISSING, align 4
  %88 = call i32 @RSAerr(i32 %86, i32 %87)
  store i32 -1, i32* %6, align 4
  br label %115

89:                                               ; preds = %81
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 8
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1, align 4
  %94 = load i32, i32* @RSA_R_BAD_PAD_BYTE_COUNT, align 4
  %95 = call i32 @RSAerr(i32 %93, i32 %94)
  store i32 -1, i32* %6, align 4
  br label %115

96:                                               ; preds = %89
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1, align 4
  %107 = load i32, i32* @RSA_R_DATA_TOO_LARGE, align 4
  %108 = call i32 @RSAerr(i32 %106, i32 %107)
  store i32 -1, i32* %6, align 4
  br label %115

109:                                              ; preds = %96
  %110 = load i8*, i8** %7, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @memcpy(i8* %110, i8* %111, i32 %112)
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %109, %105, %92, %85, %71, %47, %29, %18
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
