; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_ecdh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_ecdh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"DPP: EVP_PKEY_CTX_new failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"DPP: EVP_PKEY_derive_init failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"DPP: EVP_PKEY_derive_set_peet failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"DPP: EVP_PKEY_derive(NULL) failed: %s\00", align 1
@DPP_MAX_SHARED_SECRET_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"DPP: Unexpected secret_len=%d from EVP_PKEY_derive()\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"DPP: EVP_PKEY_derive failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"DPP: Unexpected secret_len change\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64*)* @dpp_ecdh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_ecdh(i32* %0, i32* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [200 x i32], align 16
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 -1, i32* %11, align 4
  %14 = call i32 (...) @ERR_clear_error()
  %15 = load i64*, i64** %9, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @EVP_PKEY_CTX_new(i32* %16, i32* null)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @MSG_ERROR, align 4
  %22 = call i32 (...) @ERR_get_error()
  %23 = call i32 @ERR_error_string(i32 %22, i32* null)
  %24 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %5, align 4
  br label %130

25:                                               ; preds = %4
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @EVP_PKEY_derive_init(i32* %26)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* @MSG_ERROR, align 4
  %31 = call i32 (...) @ERR_get_error()
  %32 = call i32 @ERR_error_string(i32 %31, i32* null)
  %33 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %126

34:                                               ; preds = %25
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @EVP_PKEY_derive_set_peer(i32* %35, i32* %36)
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @MSG_ERROR, align 4
  %41 = call i32 (...) @ERR_get_error()
  %42 = call i32 @ERR_error_string(i32 %41, i32* null)
  %43 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %126

44:                                               ; preds = %34
  %45 = load i32*, i32** %10, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = call i32 @EVP_PKEY_derive(i32* %45, i32* null, i64* %46)
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @MSG_ERROR, align 4
  %51 = call i32 (...) @ERR_get_error()
  %52 = call i32 @ERR_error_string(i32 %51, i32* null)
  %53 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %126

54:                                               ; preds = %44
  %55 = load i64*, i64** %9, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DPP_MAX_SHARED_SECRET_LEN, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %113

59:                                               ; preds = %54
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ugt i64 %61, 200
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @MSG_ERROR, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @MSG_DEBUG, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i64*, i64** %9, align 8
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @wpa_printf(i32 %69, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp ugt i64 %75, 200
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %126

78:                                               ; preds = %67
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds [200 x i32], [200 x i32]* %12, i64 0, i64 0
  %81 = load i64*, i64** %9, align 8
  %82 = call i32 @EVP_PKEY_derive(i32* %79, i32* %80, i64* %81)
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i32, i32* @MSG_ERROR, align 4
  %86 = call i32 (...) @ERR_get_error()
  %87 = call i32 @ERR_error_string(i32 %86, i32* null)
  %88 = call i32 @wpa_printf(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %126

89:                                               ; preds = %78
  %90 = load i64*, i64** %9, align 8
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DPP_MAX_SHARED_SECRET_LEN, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @MSG_ERROR, align 4
  %96 = load i64*, i64** %9, align 8
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @wpa_printf(i32 %95, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %126

100:                                              ; preds = %89
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = getelementptr inbounds [200 x i32], [200 x i32]* %12, i64 0, i64 0
  %103 = load i64*, i64** %9, align 8
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @wpa_hexdump_key(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32* %102, i64 %104)
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds [200 x i32], [200 x i32]* %12, i64 0, i64 0
  %108 = load i64*, i64** %9, align 8
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @os_memcpy(i32* %106, i32* %107, i64 %109)
  %111 = getelementptr inbounds [200 x i32], [200 x i32]* %12, i64 0, i64 0
  %112 = call i32 @forced_memzero(i32* %111, i32 800)
  br label %125

113:                                              ; preds = %54
  %114 = load i32*, i32** %10, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = call i32 @EVP_PKEY_derive(i32* %114, i32* %115, i64* %116)
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load i32, i32* @MSG_ERROR, align 4
  %121 = call i32 (...) @ERR_get_error()
  %122 = call i32 @ERR_error_string(i32 %121, i32* null)
  %123 = call i32 @wpa_printf(i32 %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  br label %126

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %100
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %125, %119, %94, %84, %77, %49, %39, %29
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @EVP_PKEY_CTX_free(i32* %127)
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %126, %20
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @ERR_error_string(i32, i32*) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @EVP_PKEY_derive_init(i32*) #1

declare dso_local i32 @EVP_PKEY_derive_set_peer(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_derive(i32*, i32*, i64*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @forced_memzero(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
