; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_keys.c_ldns_key_new_frm_fp_ecdsa_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_keys.c_ldns_key_new_frm_fp_ecdsa_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"PrivateKey\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_ECDSAP256SHA256 = common dso_local global i64 0, align 8
@NID_X9_62_prime256v1 = common dso_local global i32 0, align 4
@LDNS_ECDSAP384SHA384 = common dso_local global i64 0, align 8
@NID_secp384r1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, i32*)* @ldns_key_new_frm_fp_ecdsa_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ldns_key_new_frm_fp_ecdsa_l(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [16384 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds [16384 x i8], [16384 x i8]* %8, i64 0, i64 0
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @ldns_fget_keyword_data_l(i32* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 16384, i32* %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %95

20:                                               ; preds = %3
  %21 = getelementptr inbounds [16384 x i8], [16384 x i8]* %8, i64 0, i64 0
  %22 = call i64 @ldns_str2rdf_b64(i32** %9, i8* %21)
  %23 = load i64, i64* @LDNS_STATUS_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32* null, i32** %4, align 8
  br label %95

26:                                               ; preds = %20
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @ldns_rdf_data(i32* %27)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %10, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @LDNS_ECDSAP256SHA256, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @NID_X9_62_prime256v1, align 4
  %35 = call i32* @EC_KEY_new_by_curve_name(i32 %34)
  store i32* %35, i32** %13, align 8
  br label %45

36:                                               ; preds = %26
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @LDNS_ECDSAP384SHA384, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @NID_secp384r1, align 4
  %42 = call i32* @EC_KEY_new_by_curve_name(i32 %41)
  store i32* %42, i32** %13, align 8
  br label %44

43:                                               ; preds = %36
  store i32* null, i32** %13, align 8
  br label %44

44:                                               ; preds = %43, %40
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32*, i32** %13, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @ldns_rdf_deep_free(i32* %49)
  store i32* null, i32** %4, align 8
  br label %95

51:                                               ; preds = %45
  %52 = load i8*, i8** %10, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @ldns_rdf_size(i32* %53)
  %55 = trunc i64 %54 to i32
  %56 = call i32* @BN_bin2bn(i8* %52, i32 %55, i32* null)
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @ldns_rdf_deep_free(i32* %57)
  %59 = load i32*, i32** %11, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @EC_KEY_free(i32* %62)
  store i32* null, i32** %4, align 8
  br label %95

64:                                               ; preds = %51
  %65 = load i32*, i32** %13, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @EC_KEY_set_private_key(i32* %65, i32* %66)
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @BN_free(i32* %68)
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @ldns_EC_KEY_calc_public(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @EC_KEY_free(i32* %74)
  store i32* null, i32** %4, align 8
  br label %95

76:                                               ; preds = %64
  %77 = call i32* (...) @EVP_PKEY_new()
  store i32* %77, i32** %12, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @EC_KEY_free(i32* %81)
  store i32* null, i32** %4, align 8
  br label %95

83:                                               ; preds = %76
  %84 = load i32*, i32** %12, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = call i32 @EVP_PKEY_assign_EC_KEY(i32* %84, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @EVP_PKEY_free(i32* %89)
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @EC_KEY_free(i32* %91)
  store i32* null, i32** %4, align 8
  br label %95

93:                                               ; preds = %83
  %94 = load i32*, i32** %12, align 8
  store i32* %94, i32** %4, align 8
  br label %95

95:                                               ; preds = %93, %88, %80, %73, %61, %48, %25, %19
  %96 = load i32*, i32** %4, align 8
  ret i32* %96
}

declare dso_local i32 @ldns_fget_keyword_data_l(i32*, i8*, i8*, i8*, i8*, i32, i32*) #1

declare dso_local i64 @ldns_str2rdf_b64(i32**, i8*) #1

declare dso_local i64 @ldns_rdf_data(i32*) #1

declare dso_local i32* @EC_KEY_new_by_curve_name(i32) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i64 @ldns_rdf_size(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @EC_KEY_set_private_key(i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @ldns_EC_KEY_calc_public(i32*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_assign_EC_KEY(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
