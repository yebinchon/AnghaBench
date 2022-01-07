; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pvkfmt.c_do_i2b.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pvkfmt.c_do_i2b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PKEY_DSA = common dso_local global i32 0, align 4
@MS_KEYALG_DSS_SIGN = common dso_local global i32 0, align 4
@EVP_PKEY_RSA = common dso_local global i32 0, align 4
@MS_KEYALG_RSA_KEYX = common dso_local global i32 0, align 4
@PEM_F_DO_I2B = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@MS_PUBLICKEYBLOB = common dso_local global i32 0, align 4
@MS_PRIVATEKEYBLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32)* @do_i2b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_i2b(i8** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @EVP_PKEY_id(i32* %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* @EVP_PKEY_DSA, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @EVP_PKEY_get0_DSA(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @check_bitlen_dsa(i32 %22, i32 %23, i32* %10)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @MS_KEYALG_DSS_SIGN, align 4
  store i32 %25, i32* %11, align 4
  br label %38

26:                                               ; preds = %3
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @EVP_PKEY_RSA, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @EVP_PKEY_get0_RSA(i32* %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @check_bitlen_rsa(i32 %32, i32 %33, i32* %10)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @MS_KEYALG_RSA_KEYX, align 4
  store i32 %35, i32* %11, align 4
  br label %37

36:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %124

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %124

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @MS_KEYALG_DSS_SIGN, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @blob_length(i32 %43, i32 %48, i32 %49)
  %51 = add nsw i32 16, %50
  store i32 %51, i32* %12, align 4
  %52 = load i8**, i8*** %5, align 8
  %53 = icmp eq i8** %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %124

56:                                               ; preds = %42
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %8, align 8
  br label %74

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = call i8* @OPENSSL_malloc(i32 %64)
  store i8* %65, i8** %8, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @PEM_F_DO_I2B, align 4
  %69 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %70 = call i32 @PEMerr(i32 %68, i32 %69)
  store i32 -1, i32* %4, align 4
  br label %124

71:                                               ; preds = %63
  %72 = load i8*, i8** %8, align 8
  %73 = load i8**, i8*** %5, align 8
  store i8* %72, i8** %73, align 8
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %71, %60
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* @MS_PUBLICKEYBLOB, align 4
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %8, align 8
  store i8 %79, i8* %80, align 1
  br label %87

82:                                               ; preds = %74
  %83 = load i32, i32* @MS_PRIVATEKEYBLOB, align 4
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %8, align 8
  store i8 %84, i8* %85, align 1
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %8, align 8
  store i8 2, i8* %88, align 1
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %8, align 8
  store i8 0, i8* %90, align 1
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %8, align 8
  store i8 0, i8* %92, align 1
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @write_ledword(i8** %8, i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @write_ledword(i8** %8, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @write_ledword(i8** %8, i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @MS_KEYALG_DSS_SIGN, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %87
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @EVP_PKEY_get0_DSA(i32* %104)
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @write_dsa(i8** %8, i32 %105, i32 %106)
  br label %113

108:                                              ; preds = %87
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @EVP_PKEY_get0_RSA(i32* %109)
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @write_rsa(i8** %8, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = load i8**, i8*** %5, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = sext i32 %117 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %118, align 8
  br label %122

122:                                              ; preds = %116, %113
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %67, %54, %41, %36
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @check_bitlen_dsa(i32, i32, i32*) #1

declare dso_local i32 @EVP_PKEY_get0_DSA(i32*) #1

declare dso_local i32 @check_bitlen_rsa(i32, i32, i32*) #1

declare dso_local i32 @EVP_PKEY_get0_RSA(i32*) #1

declare dso_local i32 @blob_length(i32, i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i32 @write_ledword(i8**, i32) #1

declare dso_local i32 @write_dsa(i8**, i32, i32) #1

declare dso_local i32 @write_rsa(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
