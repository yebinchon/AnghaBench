; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_gen_keypair.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_gen_keypair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_curve_params = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DPP: Generating a keypair\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"DPP: Unsupported curve %s\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"DPP: Failed to generate EC_KEY parameters\00", align 1
@OPENSSL_EC_NAMED_CURVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"DPP: Failed to generate EVP_PKEY parameters\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"DPP: Failed to generate EC key\00", align 1
@wpa_debug_show_keys = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"Own generated key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dpp_curve_params*)* @dpp_gen_keypair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dpp_gen_keypair(%struct.dpp_curve_params* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.dpp_curve_params*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.dpp_curve_params* %0, %struct.dpp_curve_params** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %3, align 8
  %12 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @OBJ_txt2nid(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NID_undef, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %3, align 8
  %21 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32* null, i32** %2, align 8
  br label %78

24:                                               ; preds = %1
  %25 = load i32, i32* %8, align 4
  %26 = call i32* @EC_KEY_new_by_curve_name(i32 %25)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @MSG_ERROR, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %70

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @OPENSSL_EC_NAMED_CURVE, align 4
  %35 = call i32 @EC_KEY_set_asn1_flag(i32* %33, i32 %34)
  %36 = call i32* (...) @EVP_PKEY_new()
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @EVP_PKEY_set1_EC_KEY(i32* %40, i32* %41)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %32
  %45 = load i32, i32* @MSG_ERROR, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %70

47:                                               ; preds = %39
  %48 = load i32*, i32** %6, align 8
  %49 = call i32* @EVP_PKEY_CTX_new(i32* %48, i32* null)
  store i32* %49, i32** %4, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @EVP_PKEY_keygen_init(i32* %53)
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @EVP_PKEY_keygen(i32* %57, i32** %7)
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %52, %47
  %61 = load i32, i32* @MSG_ERROR, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %7, align 8
  br label %70

63:                                               ; preds = %56
  %64 = load i64, i64* @wpa_debug_show_keys, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @dpp_debug_print_key(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %60, %44, %29
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @EC_KEY_free(i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @EVP_PKEY_free(i32* %73)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @EVP_PKEY_CTX_free(i32* %75)
  %77 = load i32*, i32** %7, align 8
  store i32* %77, i32** %2, align 8
  br label %78

78:                                               ; preds = %70, %18
  %79 = load i32*, i32** %2, align 8
  ret i32* %79
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @OBJ_txt2nid(i32) #1

declare dso_local i32* @EC_KEY_new_by_curve_name(i32) #1

declare dso_local i32 @EC_KEY_set_asn1_flag(i32*, i32) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_set1_EC_KEY(i32*, i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_keygen_init(i32*) #1

declare dso_local i32 @EVP_PKEY_keygen(i32*, i32**) #1

declare dso_local i32 @dpp_debug_print_key(i8*, i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
