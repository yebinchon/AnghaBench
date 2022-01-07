; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pvkfmt.c_b2i_rsa.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pvkfmt.c_b2i_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PEM_F_B2I_RSA = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32, i32)* @b2i_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @b2i_rsa(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, 7
  %25 = lshr i32 %24, 3
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 15
  %28 = lshr i32 %27, 4
  store i32 %28, i32* %20, align 4
  %29 = call i32* (...) @RSA_new()
  store i32* %29, i32** %18, align 8
  %30 = call i32* (...) @EVP_PKEY_new()
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %18, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32*, i32** %9, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %3
  br label %122

37:                                               ; preds = %33
  %38 = call i32* (...) @BN_new()
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %122

42:                                               ; preds = %37
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @read_ledword(i8** %8)
  %45 = call i32 @BN_set_word(i32* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %122

48:                                               ; preds = %42
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @read_lebn(i8** %8, i32 %49, i32** %11)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %122

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %102, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %20, align 4
  %58 = call i32 @read_lebn(i8** %8, i32 %57, i32** %13)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %122

61:                                               ; preds = %56
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @read_lebn(i8** %8, i32 %62, i32** %14)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  br label %122

66:                                               ; preds = %61
  %67 = load i32, i32* %20, align 4
  %68 = call i32 @read_lebn(i8** %8, i32 %67, i32** %15)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %122

71:                                               ; preds = %66
  %72 = load i32, i32* %20, align 4
  %73 = call i32 @read_lebn(i8** %8, i32 %72, i32** %16)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  br label %122

76:                                               ; preds = %71
  %77 = load i32, i32* %20, align 4
  %78 = call i32 @read_lebn(i8** %8, i32 %77, i32** %17)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  br label %122

81:                                               ; preds = %76
  %82 = load i32, i32* %19, align 4
  %83 = call i32 @read_lebn(i8** %8, i32 %82, i32** %12)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  br label %122

86:                                               ; preds = %81
  %87 = load i32*, i32** %18, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = call i32 @RSA_set0_factors(i32* %87, i32* %88, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  br label %122

93:                                               ; preds = %86
  store i32* null, i32** %14, align 8
  store i32* null, i32** %13, align 8
  %94 = load i32*, i32** %18, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = call i32 @RSA_set0_crt_params(i32* %94, i32* %95, i32* %96, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  br label %122

101:                                              ; preds = %93
  store i32* null, i32** %17, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %15, align 8
  br label %102

102:                                              ; preds = %101, %53
  %103 = load i32*, i32** %18, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @RSA_set0_key(i32* %103, i32* %104, i32* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %102
  br label %122

110:                                              ; preds = %102
  store i32* null, i32** %12, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32*, i32** %18, align 8
  %113 = call i32 @EVP_PKEY_set1_RSA(i32* %111, i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  br label %122

116:                                              ; preds = %110
  %117 = load i32*, i32** %18, align 8
  %118 = call i32 @RSA_free(i32* %117)
  %119 = load i8*, i8** %8, align 8
  %120 = load i8**, i8*** %5, align 8
  store i8* %119, i8** %120, align 8
  %121 = load i32*, i32** %9, align 8
  store i32* %121, i32** %4, align 8
  br label %146

122:                                              ; preds = %115, %109, %100, %92, %85, %80, %75, %70, %65, %60, %52, %47, %41, %36
  %123 = load i32, i32* @PEM_F_B2I_RSA, align 4
  %124 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %125 = call i32 @PEMerr(i32 %123, i32 %124)
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @BN_free(i32* %126)
  %128 = load i32*, i32** %11, align 8
  %129 = call i32 @BN_free(i32* %128)
  %130 = load i32*, i32** %13, align 8
  %131 = call i32 @BN_free(i32* %130)
  %132 = load i32*, i32** %14, align 8
  %133 = call i32 @BN_free(i32* %132)
  %134 = load i32*, i32** %15, align 8
  %135 = call i32 @BN_free(i32* %134)
  %136 = load i32*, i32** %16, align 8
  %137 = call i32 @BN_free(i32* %136)
  %138 = load i32*, i32** %17, align 8
  %139 = call i32 @BN_free(i32* %138)
  %140 = load i32*, i32** %12, align 8
  %141 = call i32 @BN_free(i32* %140)
  %142 = load i32*, i32** %18, align 8
  %143 = call i32 @RSA_free(i32* %142)
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @EVP_PKEY_free(i32* %144)
  store i32* null, i32** %4, align 8
  br label %146

146:                                              ; preds = %122, %116
  %147 = load i32*, i32** %4, align 8
  ret i32* %147
}

declare dso_local i32* @RSA_new(...) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @read_ledword(i8**) #1

declare dso_local i32 @read_lebn(i8**, i32, i32**) #1

declare dso_local i32 @RSA_set0_factors(i32*, i32*, i32*) #1

declare dso_local i32 @RSA_set0_crt_params(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RSA_set0_key(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_set1_RSA(i32*, i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
