; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_set_keypair.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_set_keypair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_curve_params = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"DPP: OpenSSL: d2i_ECPrivateKey() failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"DPP: Unsupported curve (nid=%d) in pre-assigned key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dpp_curve_params**, i32*, i64)* @dpp_set_keypair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dpp_set_keypair(%struct.dpp_curve_params** %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dpp_curve_params**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.dpp_curve_params** %0, %struct.dpp_curve_params*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = call i32* (...) @EVP_PKEY_new()
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %67

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = call i32* @d2i_ECPrivateKey(i32* null, i32** %6, i64 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = call i32 (...) @ERR_get_error()
  %24 = call i32 @ERR_error_string(i32 %23, i32* null)
  %25 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @EVP_PKEY_free(i32* %26)
  store i32* null, i32** %4, align 8
  br label %67

28:                                               ; preds = %16
  %29 = load i32*, i32** %9, align 8
  %30 = call i32* @EC_KEY_get0_group(i32* %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @EC_KEY_free(i32* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @EVP_PKEY_free(i32* %36)
  store i32* null, i32** %4, align 8
  br label %67

38:                                               ; preds = %28
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @EC_GROUP_get_curve_name(i32* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call %struct.dpp_curve_params* @dpp_get_curve_nid(i32 %41)
  %43 = load %struct.dpp_curve_params**, %struct.dpp_curve_params*** %5, align 8
  store %struct.dpp_curve_params* %42, %struct.dpp_curve_params** %43, align 8
  %44 = load %struct.dpp_curve_params**, %struct.dpp_curve_params*** %5, align 8
  %45 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %44, align 8
  %46 = icmp ne %struct.dpp_curve_params* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @MSG_INFO, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @EC_KEY_free(i32* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @EVP_PKEY_free(i32* %53)
  store i32* null, i32** %4, align 8
  br label %67

55:                                               ; preds = %38
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @EVP_PKEY_assign_EC_KEY(i32* %56, i32* %57)
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @EC_KEY_free(i32* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @EVP_PKEY_free(i32* %63)
  store i32* null, i32** %4, align 8
  br label %67

65:                                               ; preds = %55
  %66 = load i32*, i32** %8, align 8
  store i32* %66, i32** %4, align 8
  br label %67

67:                                               ; preds = %65, %60, %47, %33, %21, %15
  %68 = load i32*, i32** %4, align 8
  ret i32* %68
}

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32* @d2i_ECPrivateKey(i32*, i32**, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @ERR_error_string(i32, i32*) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32*) #1

declare dso_local %struct.dpp_curve_params* @dpp_get_curve_nid(i32) #1

declare dso_local i32 @EVP_PKEY_assign_EC_KEY(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
