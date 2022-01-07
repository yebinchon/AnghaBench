; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_set_pubkey_point_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_set_pubkey_point_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DPP: Out of memory\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"DPP: OpenSSL: EC_POINT_set_affine_coordinates_GFp failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"DPP: Invalid point\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"DPP: dpp_set_pubkey_point_group\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"DPP: Failed to set EC_KEY: %s\00", align 1
@OPENSSL_EC_NAMED_CURVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"DPP: Could not create EVP_PKEY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i64)* @dpp_set_pubkey_point_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dpp_set_pubkey_point_group(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %16 = call i32* (...) @BN_CTX_new()
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @MSG_ERROR, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %122

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @EC_POINT_new(i32* %23)
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32* @BN_bin2bn(i32* %25, i64 %26, i32* null)
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32* @BN_bin2bn(i32* %28, i64 %29, i32* null)
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load i32*, i32** %13, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %14, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %33, %22
  %40 = load i32, i32* @MSG_ERROR, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %119

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @EC_POINT_set_affine_coordinates_GFp(i32* %43, i32* %44, i32* %45, i32* %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @MSG_ERROR, align 4
  %52 = call i32 (...) @ERR_get_error()
  %53 = call i32 @ERR_error_string(i32 %52, i32* null)
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %119

55:                                               ; preds = %42
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @EC_POINT_is_on_curve(i32* %56, i32* %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = call i64 @EC_POINT_is_at_infinity(i32* %62, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %55
  %67 = load i32, i32* @MSG_ERROR, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %119

69:                                               ; preds = %61
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @dpp_debug_print_point(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32* %70, i32* %71)
  %73 = call i32* (...) @EC_KEY_new()
  store i32* %73, i32** %10, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load i32*, i32** %10, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @EC_KEY_set_group(i32* %77, i32* %78)
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32*, i32** %10, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @EC_KEY_set_public_key(i32* %82, i32* %83)
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %91

86:                                               ; preds = %81, %76, %69
  %87 = load i32, i32* @MSG_ERROR, align 4
  %88 = call i32 (...) @ERR_get_error()
  %89 = call i32 @ERR_error_string(i32 %88, i32* null)
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %119

91:                                               ; preds = %81
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* @OPENSSL_EC_NAMED_CURVE, align 4
  %94 = call i32 @EC_KEY_set_asn1_flag(i32* %92, i32 %93)
  %95 = call i32* (...) @EVP_PKEY_new()
  store i32* %95, i32** %15, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load i32*, i32** %15, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @EVP_PKEY_set1_EC_KEY(i32* %99, i32* %100)
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %98, %91
  %104 = load i32, i32* @MSG_ERROR, align 4
  %105 = call i32 (i32, i8*, ...) @wpa_printf(i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %119

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %119, %106
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @BN_free(i32* %108)
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @BN_free(i32* %110)
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @EC_KEY_free(i32* %112)
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @EC_POINT_free(i32* %114)
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @BN_CTX_free(i32* %116)
  %118 = load i32*, i32** %15, align 8
  store i32* %118, i32** %5, align 8
  br label %122

119:                                              ; preds = %103, %86, %66, %50, %39
  %120 = load i32*, i32** %15, align 8
  %121 = call i32 @EVP_PKEY_free(i32* %120)
  store i32* null, i32** %15, align 8
  br label %107

122:                                              ; preds = %107, %19
  %123 = load i32*, i32** %5, align 8
  ret i32* %123
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32* @BN_bin2bn(i32*, i64, i32*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates_GFp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ERR_error_string(i32, i32*) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @EC_POINT_is_on_curve(i32*, i32*, i32*) #1

declare dso_local i64 @EC_POINT_is_at_infinity(i32*, i32*) #1

declare dso_local i32 @dpp_debug_print_point(i8*, i32*, i32*) #1

declare dso_local i32* @EC_KEY_new(...) #1

declare dso_local i32 @EC_KEY_set_group(i32*, i32*) #1

declare dso_local i32 @EC_KEY_set_public_key(i32*, i32*) #1

declare dso_local i32 @EC_KEY_set_asn1_flag(i32*, i32) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_set1_EC_KEY(i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
