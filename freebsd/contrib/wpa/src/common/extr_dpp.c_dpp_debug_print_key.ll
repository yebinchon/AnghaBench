; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_debug_print_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_debug_print_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"DPP: ECPrivateKey\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"DPP: EC_PUBKEY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dpp_debug_print_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp_debug_print_key(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %10, align 8
  %14 = call i32 (...) @BIO_s_mem()
  %15 = call i32* @BIO_new(i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %103

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @EVP_PKEY_print_private(i32* %20, i32* %21, i32 0, i32* null)
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @BIO_ctrl_pending(i32* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, 1
  %27 = call i8* @os_malloc(i64 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %19
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @BIO_read(i32* %31, i8* %32, i64 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %37, %30
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @os_free(i8* %47)
  br label %49

49:                                               ; preds = %46, %19
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @BIO_free(i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32* @EVP_PKEY_get1_EC_KEY(i32* %52)
  store i32* %53, i32** %5, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %103

57:                                               ; preds = %49
  %58 = load i32*, i32** %5, align 8
  %59 = call i32* @EC_KEY_get0_group(i32* %58)
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32* @EC_KEY_get0_public_key(i32* %60)
  store i32* %61, i32** %13, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load i32*, i32** %13, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i8*, i8** %3, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @dpp_debug_print_point(i8* %68, i32* %69, i32* %70)
  br label %72

72:                                               ; preds = %67, %64, %57
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @i2d_ECPrivateKey(i32* %73, i8** %10)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @wpa_hexdump_key(i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @OPENSSL_free(i8* %83)
  %85 = load i32, i32* %11, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %82
  store i8* null, i8** %10, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @i2d_EC_PUBKEY(i32* %88, i8** %10)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @wpa_hexdump(i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @OPENSSL_free(i8* %98)
  br label %100

100:                                              ; preds = %97, %82
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @EC_KEY_free(i32* %101)
  br label %103

103:                                              ; preds = %100, %56, %18
  ret void
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @EVP_PKEY_print_private(i32*, i32*, i32, i32*) #1

declare dso_local i64 @BIO_ctrl_pending(i32*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @BIO_read(i32*, i8*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32* @EC_KEY_get0_public_key(i32*) #1

declare dso_local i32 @dpp_debug_print_point(i8*, i32*, i32*) #1

declare dso_local i32 @i2d_ECPrivateKey(i32*, i8**) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @i2d_EC_PUBKEY(i32*, i8**) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i32) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
